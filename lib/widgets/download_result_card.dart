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
          title: Text(_downloadResult.url.toString(), textAlign: TextAlign.center),
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
          title: Text(_downloadResult.url.toString(), textAlign: TextAlign.center),
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
      child: ListTile(
        title: Text(done.url.toString(), textAlign: TextAlign.center),
        subtitle: Text(
          "${_timeStamp ?? '???'}, ${done.time}ms",
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
