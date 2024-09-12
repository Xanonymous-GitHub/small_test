// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DownloadResultImpl _$$DownloadResultImplFromJson(Map<String, dynamic> json) =>
    _$DownloadResultImpl(
      url: json['domain'] as String,
      time: json['time'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DownloadResultImplToJson(
        _$DownloadResultImpl instance) =>
    <String, dynamic>{
      'domain': instance.url,
      'time': instance.time,
      'runtimeType': instance.$type,
    };

_$DownloadResultErrorImpl _$$DownloadResultErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$DownloadResultErrorImpl(
      url: json['domain'] as String,
      errorMsg: json['error_msg'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DownloadResultErrorImplToJson(
        _$DownloadResultErrorImpl instance) =>
    <String, dynamic>{
      'domain': instance.url,
      'error_msg': instance.errorMsg,
      'runtimeType': instance.$type,
    };
