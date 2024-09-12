import 'dart:collection';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:small_test/download_result.dart';

/// The [Downloader] class is responsible for benchmarking the time
/// it takes to download a set of uris.
/// All the responses are not stored, but expect output their response time.
final class Downloader {
  final UnmodifiableSetView<Uri> _sourcePaths;
  final http.Client _client;

  /// Creates a new [Downloader] instance.
  /// The [sourcePaths] parameter is a set of [Uri]s to download,
  /// and the [client] parameter is an instance of [http.Client].
  const Downloader({
    required UnmodifiableSetView<Uri> sourcePaths,
    required http.Client client,
  })  : _sourcePaths = sourcePaths,
        _client = client;

  /// Fetches the target from the given [sourcePath].
  /// The HTTP request is made using the [_client] instance and is always a `GET` request.
  /// Since the response is not stored, the method only returns a boolean indicating whether the fetch was successful.
  /// Only [HttpStatus.ok] is considered a successful fetch.
  /// The [beforeFetch] and [afterFetch] callbacks are called before and after the fetch respectively.
  Future<bool> _fetchTargetFrom({
    required Uri sourcePath,
    VoidCallback? beforeFetch,
    VoidCallback? afterFetch,
  }) {
    beforeFetch?.call();
    return _client.get(sourcePath).then((response) {
      afterFetch?.call();
      return response.statusCode == HttpStatus.ok;
    });
  }

  /// Fetches all the targets from [_sourcePaths].
  /// Each of the [_sourcePaths] is fetched concurrently, and the method returns a sequence of [DownloadResult]s.
  /// The returned result may have ambiguous order.
  Future<Iterable<DownloadResult>> _performFetchConcurrently() => Future.wait(
        _sourcePaths.map(
          (sourcePath) => compute(
            (Uri sourcePath) async {
              final stopwatch = Stopwatch();

              final isSuccess = await _fetchTargetFrom(
                sourcePath: sourcePath,
                beforeFetch: stopwatch.start,
                afterFetch: stopwatch.stop,
              );

              return isSuccess
                  ? DownloadResult(
                      url: sourcePath.toString(),
                      time: stopwatch.elapsedMilliseconds,
                    )
                  : DownloadResult.error(
                      url: sourcePath.toString(),
                      errorMsg: 'Failed to fetch the target from $sourcePath',
                    );
            },
            sourcePath,
          ),
        ),
      );

  /// Get all the download results, sorted by the time it took to fetch the target.
  Future<List<DownloadResult>> fetchAll() async {
    final results = await _performFetchConcurrently();
    return results.toList()..sort((a, b) => a.time.compareTo(b.time));
  }
}
