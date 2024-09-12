import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_result.freezed.dart';
part 'download_result.g.dart';

@Freezed(toJson: true)
sealed class DownloadResult with _$DownloadResult {
  const factory DownloadResult({
    @JsonKey(name: 'domain') required String url,
    required num time,
  }) = _DownloadResult;

  const factory DownloadResult.error({
    @JsonKey(name: 'domain') required String url,
    @JsonKey(name: 'error_msg') required String errorMsg,
    @Default(double.maxFinite) num time,
  }) = _DownloadResultError;

  @override
  Map<String, dynamic> toJson() => toJson()..remove('runtimeType');
}
