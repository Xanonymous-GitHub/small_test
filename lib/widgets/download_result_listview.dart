import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:small_test/widgets/download_result_card.dart';

import '../models/download_result.dart';
import '../view_models/downloader.dart';

final _sourcePaths = {
  Uri.parse('https://image-test-a.xcc.tw/test-img'),
  Uri.parse('https://image-test-b.xcc.tw/test-img'),
  Uri.parse('https://image-test-c.xcc.tw/test-img'),
};

List<ValueNotifier<DownloadResult>> _submitDownloadTask() {
  final downloader = Downloader(sourcePaths: UnmodifiableSetView(_sourcePaths));
  downloader.fetchAll();
  return downloader.results;
}

final class DownloadResultListView extends StatefulWidget {
  const DownloadResultListView({super.key});

  @override
  State<DownloadResultListView> createState() => _DownloadResultListViewState();
}

final class _DownloadResultListViewState extends State<DownloadResultListView> {
  final List<ValueNotifier<DownloadResult>> _downloadResults = [];
  final Map<int, String> _timeStamps = {};
  final ScrollController _scrollController = ScrollController();

  void _onDownloadButtonClicked() {
    _downloadResults.addAll(_submitDownloadTask());
    setState(() {});
    _scrollDown();
  }

  void _scrollDown() {
    if (_scrollController.hasClients) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  Widget _buildDownloadResultItem(BuildContext context, int index) {
    final result = _downloadResults[index];
    final timeStamp = _timeStamps.putIfAbsent(result.hashCode, () => DateTime.now().toString());
    return ValueListenableBuilder(
      key: ValueKey(result),
      valueListenable: result,
      builder: (_, downloadResult, __) => DownloadResultCard(
        downloadResult: downloadResult,
        timeStamp: timeStamp,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final secondaryColor = Theme.of(context).colorScheme.secondary;
    final onSecondaryColor = Theme.of(context).colorScheme.onSecondary;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: _downloadResults.isNotEmpty
              ? ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemBuilder: _buildDownloadResultItem,
                  itemCount: _downloadResults.length,
                  shrinkWrap: true,
                  controller: _scrollController,
                )
              : Center(
                  child: Icon(
                  Icons.add_chart_sharp,
                  size: 200,
                  color: secondaryColor.withOpacity(.5),
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
              label: const Text('Download'),
              icon: const Icon(Icons.download),
            ),
            const SizedBox(width: 8),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: secondaryColor,
                foregroundColor: onSecondaryColor,
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: _downloadResults.isNotEmpty
                  ? () => setState(() {
                        _downloadResults.clear();
                        _timeStamps.clear();
                      })
                  : null,
              label: const Text('Clear'),
              icon: const Icon(Icons.clear),
            ),
          ],
        ),
      ],
    );
  }
}
