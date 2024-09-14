import 'package:flutter/material.dart';
import 'package:small_test/download_result.dart';

class DownloadResultCard extends StatelessWidget {
  final Stream<DownloadResult> _downloadResult;
  final String? _timeStamp;

  const DownloadResultCard({
    super.key,
    required Stream<DownloadResult> downloadResult,
    String? timeStamp,
  })  : _downloadResult = downloadResult,
        _timeStamp = timeStamp;

  @override
  Widget build(BuildContext context) {
    final zeroProgress = RealDownloadResultImplPending(url: Uri.parse(''), progress: 0);

    return StreamBuilder(
      stream: _downloadResult,
      initialData: zeroProgress,
      builder: (context, snapshot) {
        final data = snapshot.data ?? snapshot.error as RealDownloadResultImplError? ?? zeroProgress;
        if (data is RealDownloadResultImplPending) {
          return Card(
            surfaceTintColor: Theme.of(context).colorScheme.primaryContainer,
            child: ListTile(
              title: Text(data.url.toString(), textAlign: TextAlign.center),
              subtitle: Text(
                "${(data.progress * 100).toStringAsFixed(2)}%",
                textAlign: TextAlign.right,
              ),
            ),
          );
        }

        if (data is RealDownloadResultImplError) {
          return Card(
            surfaceTintColor: Theme.of(context).colorScheme.error,
            child: ListTile(
              title: Text(data.url.toString(), textAlign: TextAlign.center),
              subtitle: const Text(
                'ERROR',
                textAlign: TextAlign.right,
              ),
            ),
          );
        }

        final done = data as RealDownloadResultImpl;
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
      },
    );
  }
}
