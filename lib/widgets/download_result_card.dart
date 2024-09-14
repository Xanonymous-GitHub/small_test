import 'package:flutter/material.dart';
import 'package:small_test/download_result.dart';

class DownloadResultCard extends StatelessWidget {
  final DownloadResult _downloadResult;
  final String? _timeStamp;

  const DownloadResultCard({
    super.key,
    required DownloadResult downloadResult,
    String? timeStamp,
  })  : _downloadResult = downloadResult,
        _timeStamp = timeStamp;

  @override
  Widget build(BuildContext context) {
    if (_downloadResult is RealDownloadResultImplPending) {
      return Card(
        surfaceTintColor: Theme.of(context).colorScheme.primaryContainer,
        child: ListTile(
          leading: _downloadResult.progress == 0
              ? const Icon(Icons.pending_outlined)
              : SizedBox.square(
                  dimension: 24,
                  child: CircularProgressIndicator(
                    value: _downloadResult.progress,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
          title: Text(_downloadResult.url.toString(), textAlign: TextAlign.left),
          subtitle: Text(
            "${(_downloadResult.progress * 100).toStringAsFixed(2)}%",
            textAlign: TextAlign.right,
          ),
        ),
      );
    }

    if (_downloadResult is RealDownloadResultImplError) {
      return Card(
        surfaceTintColor: Theme.of(context).colorScheme.error,
        child: ListTile(
          leading: Icon(Icons.report_gmailerrorred_outlined, color: Theme.of(context).colorScheme.onError),
          title: Text(_downloadResult.url.toString(), textAlign: TextAlign.left),
          subtitle: const Text(
            'ERROR',
            textAlign: TextAlign.right,
          ),
        ),
      );
    }

    final done = _downloadResult as RealDownloadResultImpl;
    return Card(
      surfaceTintColor: Theme.of(context).colorScheme.primaryContainer,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListTile(
              leading: Icon(Icons.done_outline, color: Theme.of(context).colorScheme.onPrimaryContainer),
              title: Text(done.url.toString(), textAlign: TextAlign.left),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${_timeStamp ?? '???'}, ", textAlign: TextAlign.left),
                  Text("${done.time}ms", textAlign: TextAlign.right),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
