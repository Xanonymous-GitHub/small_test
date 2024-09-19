// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$RealDownloadResultImplImplToJson(_$RealDownloadResultImplImpl instance) => <String, dynamic>{
      'domain': instance.url.toString(),
      'time': instance.time,
      'runtimeType': instance.$type,
    };

Map<String, dynamic> _$$RealDownloadResultImplPendingImplToJson(_$RealDownloadResultImplPendingImpl instance) =>
    <String, dynamic>{
      'domain': instance.url.toString(),
      'progress': instance.progress,
      'runtimeType': instance.$type,
    };

Map<String, dynamic> _$$RealDownloadResultImplErrorImplToJson(_$RealDownloadResultImplErrorImpl instance) =>
    <String, dynamic>{
      'domain': instance.url.toString(),
      'error_msg': instance.errorMsg,
      'time': instance.time,
      'runtimeType': instance.$type,
    };
