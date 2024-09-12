import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:small_test/download_result.dart';

final class Downloader {
  final UnmodifiableSetView<Uri> _sourcePaths;
  final http.Client _client;

  const Downloader({
    required UnmodifiableSetView<Uri> sourcePaths,
    required http.Client client,
  })  : _sourcePaths = sourcePaths,
        _client = client;

  Future<void> _fetchTargetFrom({required Uri sourcePath}) => _client.get(sourcePath);

  Future<List<DownloadResult>> fetchAll() => Future.wait(
        _sourcePaths.map(
          (sourcePath) => compute(
            (Uri sourcePath) async {
              final stopwatch = Stopwatch()..start();
              await _fetchTargetFrom(sourcePath: sourcePath);
              stopwatch.stop();

              return DownloadResult(
                url: sourcePath.toString(),
                time: '${stopwatch.elapsedMilliseconds}',
              );
            },
            sourcePath,
          ),
        ),
      );
}
