import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'download_result.dart';
import 'downloader.dart';

final _sourcePaths = {
  Uri.parse('https://image-test-a.xcc.tw/test-img'),
  Uri.parse('https://image-test-b.xcc.tw/test-img'),
  Uri.parse('https://image-test-c.xcc.tw/test-img'),
};

Future<List<DownloadResult>> _submitDownloadTask() {
  final client = http.Client();
  final downloader = Downloader(sourcePaths: UnmodifiableSetView(_sourcePaths), client: client);
  return downloader.fetchAll();
}

final class DownloadResultListView extends StatefulWidget {
  const DownloadResultListView({super.key});

  @override
  State<DownloadResultListView> createState() => _DownloadResultListViewState();
}

final class _DownloadResultListViewState extends State<DownloadResultListView> {
  final List<DownloadResult> _downloadResults = [];
  final Queue<Future<List<DownloadResult>>> _tasks = Queue();

  void _onDownloadButtonClicked() {
    setState(() {
      _tasks.add(_submitDownloadTask());
    });
  }

  void _consumeDownloadTask() {
    if (_tasks.isNotEmpty) {
      _tasks.first.then((result) {
        setState(() {
          _downloadResults.insertAll(0, result);
          _tasks.removeFirst();
        });
      });
    }
  }

  Widget _buildDownloadResultItem(BuildContext context, int index) {
    final downloadResult = _downloadResults[index];
    final isError = downloadResult.time == double.maxFinite;

    return Card(
      surfaceTintColor: isError ? Theme.of(context).colorScheme.error : Theme.of(context).colorScheme.primaryContainer,
      child: ListTile(
        title: Text(downloadResult.url, textAlign: TextAlign.center),
        subtitle: Text(
          "${DateTime.now().toIso8601String()}, "
          "${isError ? 'ERROR' : '${downloadResult.time} ms'}",
          textAlign: TextAlign.right,
        ),
      ),
    );
  }

  @override
  void deactivate() {
    for (final task in _tasks) {
      task.ignore();
    }
    _tasks.clear();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    _consumeDownloadTask();

    final secondaryColor = Theme.of(context).colorScheme.secondary;
    final onSecondaryColor = Theme.of(context).colorScheme.onSecondary;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: _downloadResults.isNotEmpty
              ? ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemBuilder: _buildDownloadResultItem,
                  itemCount: _downloadResults.length,
                )
              : const Center(
                  child: Icon(
                  Icons.add_chart_sharp,
                  size: 200,
                  color: Colors.grey,
                )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: secondaryColor,
                foregroundColor: onSecondaryColor,
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: _onDownloadButtonClicked,
              label: _tasks.isEmpty ? const Text('Download') : Text('Downloading...[${_tasks.length}]'),
              icon: _tasks.isEmpty
                  ? const Icon(Icons.download)
                  : SizedBox.square(
                      dimension: 20,
                      child: CircularProgressIndicator(
                        color: onSecondaryColor,
                      ),
                    ),
            ),
            const SizedBox(width: 8),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: secondaryColor,
                foregroundColor: onSecondaryColor,
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: _downloadResults.isNotEmpty ? () => setState(() => _downloadResults.clear()) : null,
              label: const Text('Clear'),
              icon: const Icon(Icons.clear),
            ),
          ],
        ),
      ],
    );
  }
}
