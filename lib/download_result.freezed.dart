// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DownloadResult {
  @JsonKey(name: 'domain')
  String get url => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'domain') String url, String time) $default, {
    required TResult Function(@JsonKey(name: 'domain') String url, @JsonKey(name: 'error_msg') String errorMsg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'domain') String url, String time)? $default, {
    TResult? Function(@JsonKey(name: 'domain') String url, @JsonKey(name: 'error_msg') String errorMsg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'domain') String url, String time)? $default, {
    TResult Function(@JsonKey(name: 'domain') String url, @JsonKey(name: 'error_msg') String errorMsg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DownloadResult value) $default, {
    required TResult Function(_DownloadResultError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DownloadResult value)? $default, {
    TResult? Function(_DownloadResultError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DownloadResult value)? $default, {
    TResult Function(_DownloadResultError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this DownloadResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DownloadResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadResultCopyWith<DownloadResult> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadResultCopyWith<$Res> {
  factory $DownloadResultCopyWith(DownloadResult value, $Res Function(DownloadResult) then) =
      _$DownloadResultCopyWithImpl<$Res, DownloadResult>;
  @useResult
  $Res call({@JsonKey(name: 'domain') String url});
}

/// @nodoc
class _$DownloadResultCopyWithImpl<$Res, $Val extends DownloadResult> implements $DownloadResultCopyWith<$Res> {
  _$DownloadResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadResultImplCopyWith<$Res> implements $DownloadResultCopyWith<$Res> {
  factory _$$DownloadResultImplCopyWith(_$DownloadResultImpl value, $Res Function(_$DownloadResultImpl) then) =
      __$$DownloadResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'domain') String url, String time});
}

/// @nodoc
class __$$DownloadResultImplCopyWithImpl<$Res> extends _$DownloadResultCopyWithImpl<$Res, _$DownloadResultImpl>
    implements _$$DownloadResultImplCopyWith<$Res> {
  __$$DownloadResultImplCopyWithImpl(_$DownloadResultImpl _value, $Res Function(_$DownloadResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? time = null,
  }) {
    return _then(_$DownloadResultImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$DownloadResultImpl implements _DownloadResult {
  const _$DownloadResultImpl({@JsonKey(name: 'domain') required this.url, required this.time, final String? $type})
      : $type = $type ?? 'default';

  @override
  @JsonKey(name: 'domain')
  final String url;
  @override
  final String time;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DownloadResult(url: $url, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadResultImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, time);

  /// Create a copy of DownloadResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadResultImplCopyWith<_$DownloadResultImpl> get copyWith =>
      __$$DownloadResultImplCopyWithImpl<_$DownloadResultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'domain') String url, String time) $default, {
    required TResult Function(@JsonKey(name: 'domain') String url, @JsonKey(name: 'error_msg') String errorMsg) error,
  }) {
    return $default(url, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'domain') String url, String time)? $default, {
    TResult? Function(@JsonKey(name: 'domain') String url, @JsonKey(name: 'error_msg') String errorMsg)? error,
  }) {
    return $default?.call(url, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'domain') String url, String time)? $default, {
    TResult Function(@JsonKey(name: 'domain') String url, @JsonKey(name: 'error_msg') String errorMsg)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(url, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DownloadResult value) $default, {
    required TResult Function(_DownloadResultError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DownloadResult value)? $default, {
    TResult? Function(_DownloadResultError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DownloadResult value)? $default, {
    TResult Function(_DownloadResultError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadResultImplToJson(
      this,
    );
  }
}

abstract class _DownloadResult implements DownloadResult {
  const factory _DownloadResult({@JsonKey(name: 'domain') required final String url, required final String time}) =
      _$DownloadResultImpl;

  @override
  @JsonKey(name: 'domain')
  String get url;
  String get time;

  /// Create a copy of DownloadResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadResultImplCopyWith<_$DownloadResultImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadResultErrorImplCopyWith<$Res> implements $DownloadResultCopyWith<$Res> {
  factory _$$DownloadResultErrorImplCopyWith(
          _$DownloadResultErrorImpl value, $Res Function(_$DownloadResultErrorImpl) then) =
      __$$DownloadResultErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'domain') String url, @JsonKey(name: 'error_msg') String errorMsg});
}

/// @nodoc
class __$$DownloadResultErrorImplCopyWithImpl<$Res>
    extends _$DownloadResultCopyWithImpl<$Res, _$DownloadResultErrorImpl>
    implements _$$DownloadResultErrorImplCopyWith<$Res> {
  __$$DownloadResultErrorImplCopyWithImpl(
      _$DownloadResultErrorImpl _value, $Res Function(_$DownloadResultErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? errorMsg = null,
  }) {
    return _then(_$DownloadResultErrorImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$DownloadResultErrorImpl implements _DownloadResultError {
  const _$DownloadResultErrorImpl(
      {@JsonKey(name: 'domain') required this.url,
      @JsonKey(name: 'error_msg') required this.errorMsg,
      final String? $type})
      : $type = $type ?? 'error';

  @override
  @JsonKey(name: 'domain')
  final String url;
  @override
  @JsonKey(name: 'error_msg')
  final String errorMsg;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DownloadResult.error(url: $url, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadResultErrorImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, errorMsg);

  /// Create a copy of DownloadResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadResultErrorImplCopyWith<_$DownloadResultErrorImpl> get copyWith =>
      __$$DownloadResultErrorImplCopyWithImpl<_$DownloadResultErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'domain') String url, String time) $default, {
    required TResult Function(@JsonKey(name: 'domain') String url, @JsonKey(name: 'error_msg') String errorMsg) error,
  }) {
    return error(url, errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'domain') String url, String time)? $default, {
    TResult? Function(@JsonKey(name: 'domain') String url, @JsonKey(name: 'error_msg') String errorMsg)? error,
  }) {
    return error?.call(url, errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'domain') String url, String time)? $default, {
    TResult Function(@JsonKey(name: 'domain') String url, @JsonKey(name: 'error_msg') String errorMsg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(url, errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DownloadResult value) $default, {
    required TResult Function(_DownloadResultError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DownloadResult value)? $default, {
    TResult? Function(_DownloadResultError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DownloadResult value)? $default, {
    TResult Function(_DownloadResultError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadResultErrorImplToJson(
      this,
    );
  }
}

abstract class _DownloadResultError implements DownloadResult {
  const factory _DownloadResultError(
      {@JsonKey(name: 'domain') required final String url,
      @JsonKey(name: 'error_msg') required final String errorMsg}) = _$DownloadResultErrorImpl;

  @override
  @JsonKey(name: 'domain')
  String get url;
  @JsonKey(name: 'error_msg')
  String get errorMsg;

  /// Create a copy of DownloadResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadResultErrorImplCopyWith<_$DownloadResultErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
