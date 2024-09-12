import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_result.freezed.dart';
part 'download_result.g.dart';

@freezed
sealed class DownloadResult with _$DownloadResult {
  const factory DownloadResult({
    @JsonKey(name: 'domain') required String url,
    required String time,
  }) = _DownloadResult;

  const factory DownloadResult.error({
    @JsonKey(name: 'domain') required String url,
    @JsonKey(name: 'error_msg') required String errorMsg,
  }) = _DownloadResultError;

  factory DownloadResult.fromJson(Map<String, dynamic> json) =>
      _$DownloadResultFromJson(json);
}
