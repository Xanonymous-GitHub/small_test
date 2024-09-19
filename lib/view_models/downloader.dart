import 'dart:collection';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:small_test/models/download_result.dart';

/// The [Downloader] class is responsible for benchmarking the time
/// it takes to download a set of uris.
/// All the responses are not stored, but expect output their response time.
/// The [results] field contains the listenable results of the download.
final class Downloader {
  final http.Client _client;
  final List<ValueNotifier<DownloadResult>> results;

  /// Creates a new [Downloader] instance.
  /// The [sourcePaths] parameter is a set of [Uri]s to download,
  /// and the [client] parameter is optional, defaulting to a new [http.Client] instance.
  /// The [results] field is initialized with a list of [RealDownloadResultImplPending] instances.
  Downloader({
    required UnmodifiableSetView<Uri> sourcePaths,
    http.Client? client,
  })  : _client = client ?? http.Client(),
        results = sourcePaths
            .map(
              (uri) => ValueNotifier<DownloadResult>(
                RealDownloadResultImplPending(url: uri, progress: 0),
              ),
            )
            .toList();

  /// Fetches the target from the given [pendingResult], and discards the response data.
  /// Different implementations of the [DownloadResult] are
  /// returned to [pendingResult] based on the status of the fetch.
  /// The HTTP request is made using the [_client] instance and is always a `GET` request.
  /// Only [HttpStatus.ok] is considered a successful fetch.
  void _fetchTarget(int pendingResultIdx) async {
    final pendingResult = results[pendingResultIdx];
    final sourcePath = pendingResult.value.url;
    final http.Request request = http.Request('GET', sourcePath);
    final timer = Stopwatch()..start();

    try {
      final response = await _client.send(request);

      if (response.statusCode != HttpStatus.ok) {
        timer.stop();
        pendingResult.value = RealDownloadResultImplError(
          url: sourcePath,
          errorMsg: 'Got non ${HttpStatus.ok} status code from server: $sourcePath',
        );
      }

      final expectContentLength = int.tryParse(response.headers['content-length'] ?? '-1') ?? -1;
      if (expectContentLength == -1) {
        timer.stop();
        pendingResult.value = RealDownloadResultImplError(
          url: sourcePath,
          errorMsg: 'Invalid or missing content-length header from server: $sourcePath',
        );
      }

      int byteDownloaded = 0;

      await for (final chunk in response.stream) {
        byteDownloaded += chunk.length;
        pendingResult.value = RealDownloadResultImplPending(
          url: sourcePath,
          progress: byteDownloaded / expectContentLength,
        );
      }

      timer.stop();
      pendingResult.value = RealDownloadResultImpl(url: sourcePath, time: timer.elapsedMilliseconds);
    } catch (e) {
      timer.stop();
      pendingResult.value = RealDownloadResultImplError(url: sourcePath, errorMsg: e.toString());
    }
  }

  /// Triggers fetches of all the given targets.
  /// Each of the target is fetched concurrently.
  void fetchAll() => results.asMap().forEach((idx, _) => _fetchTarget(idx));
}
