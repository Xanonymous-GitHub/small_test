import 'dart:async';
import 'dart:collection';
import 'dart:io';

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

  /// Fetches the target from the given [sourcePath], and discards the response data.
  /// Different implementations of the [DownloadResult] are returned based on the status of the fetch.
  /// The HTTP request is made using the [_client] instance and is always a `GET` request.
  /// Only [HttpStatus.ok] is considered a successful fetch.
  Stream<DownloadResult> _fetchTarget(Uri sourcePath) async* {
    final http.Request request = http.Request('GET', sourcePath);
    final timer = Stopwatch()..start();

    try {
      yield RealDownloadResultImplPending(url: sourcePath, progress: 0);
      final response = await _client.send(request);

      if (response.statusCode != HttpStatus.ok) {
        timer.stop();
        throw RealDownloadResultImplError(
          url: sourcePath,
          errorMsg: 'Got non ${HttpStatus.ok} status code from server: $sourcePath',
        );
      }

      final expectContentLength = int.tryParse(response.headers['content-length'] ?? '-1') ?? -1;
      if (expectContentLength == -1) {
        timer.stop();
        throw RealDownloadResultImplError(
          url: sourcePath,
          errorMsg: 'Invalid or missing content-length header from server: $sourcePath',
        );
      }

      int byteDownloaded = 0;

      await for (final chunk in response.stream) {
        byteDownloaded += chunk.length;
        yield RealDownloadResultImplPending(
          url: sourcePath,
          progress: byteDownloaded / expectContentLength,
        );
      }

      timer.stop();
      yield RealDownloadResultImpl(url: sourcePath, time: timer.elapsedMilliseconds);
    } catch (e) {
      timer.stop();
      throw RealDownloadResultImplError(url: sourcePath, errorMsg: e.toString());
    }

    return;
  }

  /// Fetches all the targets from [_sourcePaths].
  /// Each of the [_sourcePaths] is fetched concurrently, and the method returns a sequence of [DownloadResult] streams.
  /// The returned stream indicates the status of each download, and their order is not guaranteed.
  Iterable<Stream<DownloadResult>> fetchAll() => _sourcePaths.map((path) => _fetchTarget(path).asBroadcastStream());
}
