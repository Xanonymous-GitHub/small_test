import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_result.freezed.dart';
part 'download_result.g.dart';

abstract interface class DownloadResult {
  /// The domain of the download result.
  Uri get url;
}

abstract interface class DownloadResultDone implements DownloadResult {
  /// The time it took to fetch the target.
  num get time;
}

abstract interface class DownloadResultPending implements DownloadResult {
  /// The progress of the download.
  double get progress;
}

abstract interface class DownloadResultError implements DownloadResultDone {
  /// The error message.
  String get errorMsg;
}

@Freezed(toJson: true)
sealed class DownloadResultImpl with _$DownloadResultImpl implements DownloadResult {
  @Implements<DownloadResultDone>()
  const factory DownloadResultImpl({
    @JsonKey(name: 'domain') required Uri url,
    required num time,
  }) = RealDownloadResultImpl;

  @Implements<DownloadResultPending>()
  const factory DownloadResultImpl.pending({
    @JsonKey(name: 'domain') required Uri url,
    required double progress,
  }) = RealDownloadResultImplPending;

  @Implements<DownloadResultDone>()
  @Implements<DownloadResultError>()
  const factory DownloadResultImpl.error({
    @JsonKey(name: 'domain') required Uri url,
    @JsonKey(name: 'error_msg') required String errorMsg,
    @Default(double.maxFinite) num time,
  }) = RealDownloadResultImplError;

  @override
  Map<String, dynamic> toJson() => toJson()..remove('runtimeType');
}
