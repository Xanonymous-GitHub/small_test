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
mixin _$DownloadResultImpl {
  @JsonKey(name: 'domain')
  Uri get url => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'domain') Uri url, num time) $default, {
    required TResult Function(@JsonKey(name: 'domain') Uri url, double progress) pending,
    required TResult Function(@JsonKey(name: 'domain') Uri url, @JsonKey(name: 'error_msg') String errorMsg, num time)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'domain') Uri url, num time)? $default, {
    TResult? Function(@JsonKey(name: 'domain') Uri url, double progress)? pending,
    TResult? Function(@JsonKey(name: 'domain') Uri url, @JsonKey(name: 'error_msg') String errorMsg, num time)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'domain') Uri url, num time)? $default, {
    TResult Function(@JsonKey(name: 'domain') Uri url, double progress)? pending,
    TResult Function(@JsonKey(name: 'domain') Uri url, @JsonKey(name: 'error_msg') String errorMsg, num time)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RealDownloadResultImpl value) $default, {
    required TResult Function(RealDownloadResultImplPending value) pending,
    required TResult Function(RealDownloadResultImplError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RealDownloadResultImpl value)? $default, {
    TResult? Function(RealDownloadResultImplPending value)? pending,
    TResult? Function(RealDownloadResultImplError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RealDownloadResultImpl value)? $default, {
    TResult Function(RealDownloadResultImplPending value)? pending,
    TResult Function(RealDownloadResultImplError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this DownloadResultImpl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DownloadResultImpl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadResultImplCopyWith<DownloadResultImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadResultImplCopyWith<$Res> {
  factory $DownloadResultImplCopyWith(DownloadResultImpl value, $Res Function(DownloadResultImpl) then) =
      _$DownloadResultImplCopyWithImpl<$Res, DownloadResultImpl>;
  @useResult
  $Res call({@JsonKey(name: 'domain') Uri url});
}

/// @nodoc
class _$DownloadResultImplCopyWithImpl<$Res, $Val extends DownloadResultImpl>
    implements $DownloadResultImplCopyWith<$Res> {
  _$DownloadResultImplCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadResultImpl
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
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RealDownloadResultImplImplCopyWith<$Res> implements $DownloadResultImplCopyWith<$Res> {
  factory _$$RealDownloadResultImplImplCopyWith(
          _$RealDownloadResultImplImpl value, $Res Function(_$RealDownloadResultImplImpl) then) =
      __$$RealDownloadResultImplImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'domain') Uri url, num time});
}

/// @nodoc
class __$$RealDownloadResultImplImplCopyWithImpl<$Res>
    extends _$DownloadResultImplCopyWithImpl<$Res, _$RealDownloadResultImplImpl>
    implements _$$RealDownloadResultImplImplCopyWith<$Res> {
  __$$RealDownloadResultImplImplCopyWithImpl(
      _$RealDownloadResultImplImpl _value, $Res Function(_$RealDownloadResultImplImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadResultImpl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? time = null,
  }) {
    return _then(_$RealDownloadResultImplImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$RealDownloadResultImplImpl implements RealDownloadResultImpl {
  const _$RealDownloadResultImplImpl(
      {@JsonKey(name: 'domain') required this.url, required this.time, final String? $type})
      : $type = $type ?? 'default';

  @override
  @JsonKey(name: 'domain')
  final Uri url;
  @override
  final num time;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DownloadResultImpl(url: $url, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealDownloadResultImplImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, time);

  /// Create a copy of DownloadResultImpl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RealDownloadResultImplImplCopyWith<_$RealDownloadResultImplImpl> get copyWith =>
      __$$RealDownloadResultImplImplCopyWithImpl<_$RealDownloadResultImplImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'domain') Uri url, num time) $default, {
    required TResult Function(@JsonKey(name: 'domain') Uri url, double progress) pending,
    required TResult Function(@JsonKey(name: 'domain') Uri url, @JsonKey(name: 'error_msg') String errorMsg, num time)
        error,
  }) {
    return $default(url, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'domain') Uri url, num time)? $default, {
    TResult? Function(@JsonKey(name: 'domain') Uri url, double progress)? pending,
    TResult? Function(@JsonKey(name: 'domain') Uri url, @JsonKey(name: 'error_msg') String errorMsg, num time)? error,
  }) {
    return $default?.call(url, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'domain') Uri url, num time)? $default, {
    TResult Function(@JsonKey(name: 'domain') Uri url, double progress)? pending,
    TResult Function(@JsonKey(name: 'domain') Uri url, @JsonKey(name: 'error_msg') String errorMsg, num time)? error,
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
    TResult Function(RealDownloadResultImpl value) $default, {
    required TResult Function(RealDownloadResultImplPending value) pending,
    required TResult Function(RealDownloadResultImplError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RealDownloadResultImpl value)? $default, {
    TResult? Function(RealDownloadResultImplPending value)? pending,
    TResult? Function(RealDownloadResultImplError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RealDownloadResultImpl value)? $default, {
    TResult Function(RealDownloadResultImplPending value)? pending,
    TResult Function(RealDownloadResultImplError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RealDownloadResultImplImplToJson(
      this,
    );
  }
}

abstract class RealDownloadResultImpl implements DownloadResultImpl, DownloadResultDone {
  const factory RealDownloadResultImpl({@JsonKey(name: 'domain') required final Uri url, required final num time}) =
      _$RealDownloadResultImplImpl;

  @override
  @JsonKey(name: 'domain')
  Uri get url;
  num get time;

  /// Create a copy of DownloadResultImpl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RealDownloadResultImplImplCopyWith<_$RealDownloadResultImplImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RealDownloadResultImplPendingImplCopyWith<$Res> implements $DownloadResultImplCopyWith<$Res> {
  factory _$$RealDownloadResultImplPendingImplCopyWith(
          _$RealDownloadResultImplPendingImpl value, $Res Function(_$RealDownloadResultImplPendingImpl) then) =
      __$$RealDownloadResultImplPendingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'domain') Uri url, double progress});
}

/// @nodoc
class __$$RealDownloadResultImplPendingImplCopyWithImpl<$Res>
    extends _$DownloadResultImplCopyWithImpl<$Res, _$RealDownloadResultImplPendingImpl>
    implements _$$RealDownloadResultImplPendingImplCopyWith<$Res> {
  __$$RealDownloadResultImplPendingImplCopyWithImpl(
      _$RealDownloadResultImplPendingImpl _value, $Res Function(_$RealDownloadResultImplPendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadResultImpl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? progress = null,
  }) {
    return _then(_$RealDownloadResultImplPendingImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$RealDownloadResultImplPendingImpl implements RealDownloadResultImplPending {
  const _$RealDownloadResultImplPendingImpl(
      {@JsonKey(name: 'domain') required this.url, required this.progress, final String? $type})
      : $type = $type ?? 'pending';

  @override
  @JsonKey(name: 'domain')
  final Uri url;
  @override
  final double progress;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DownloadResultImpl.pending(url: $url, progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealDownloadResultImplPendingImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.progress, progress) || other.progress == progress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, progress);

  /// Create a copy of DownloadResultImpl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RealDownloadResultImplPendingImplCopyWith<_$RealDownloadResultImplPendingImpl> get copyWith =>
      __$$RealDownloadResultImplPendingImplCopyWithImpl<_$RealDownloadResultImplPendingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'domain') Uri url, num time) $default, {
    required TResult Function(@JsonKey(name: 'domain') Uri url, double progress) pending,
    required TResult Function(@JsonKey(name: 'domain') Uri url, @JsonKey(name: 'error_msg') String errorMsg, num time)
        error,
  }) {
    return pending(url, progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'domain') Uri url, num time)? $default, {
    TResult? Function(@JsonKey(name: 'domain') Uri url, double progress)? pending,
    TResult? Function(@JsonKey(name: 'domain') Uri url, @JsonKey(name: 'error_msg') String errorMsg, num time)? error,
  }) {
    return pending?.call(url, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'domain') Uri url, num time)? $default, {
    TResult Function(@JsonKey(name: 'domain') Uri url, double progress)? pending,
    TResult Function(@JsonKey(name: 'domain') Uri url, @JsonKey(name: 'error_msg') String errorMsg, num time)? error,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(url, progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RealDownloadResultImpl value) $default, {
    required TResult Function(RealDownloadResultImplPending value) pending,
    required TResult Function(RealDownloadResultImplError value) error,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RealDownloadResultImpl value)? $default, {
    TResult? Function(RealDownloadResultImplPending value)? pending,
    TResult? Function(RealDownloadResultImplError value)? error,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RealDownloadResultImpl value)? $default, {
    TResult Function(RealDownloadResultImplPending value)? pending,
    TResult Function(RealDownloadResultImplError value)? error,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RealDownloadResultImplPendingImplToJson(
      this,
    );
  }
}

abstract class RealDownloadResultImplPending implements DownloadResultImpl, DownloadResultPending {
  const factory RealDownloadResultImplPending(
      {@JsonKey(name: 'domain') required final Uri url,
      required final double progress}) = _$RealDownloadResultImplPendingImpl;

  @override
  @JsonKey(name: 'domain')
  Uri get url;
  double get progress;

  /// Create a copy of DownloadResultImpl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RealDownloadResultImplPendingImplCopyWith<_$RealDownloadResultImplPendingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RealDownloadResultImplErrorImplCopyWith<$Res> implements $DownloadResultImplCopyWith<$Res> {
  factory _$$RealDownloadResultImplErrorImplCopyWith(
          _$RealDownloadResultImplErrorImpl value, $Res Function(_$RealDownloadResultImplErrorImpl) then) =
      __$$RealDownloadResultImplErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'domain') Uri url, @JsonKey(name: 'error_msg') String errorMsg, num time});
}

/// @nodoc
class __$$RealDownloadResultImplErrorImplCopyWithImpl<$Res>
    extends _$DownloadResultImplCopyWithImpl<$Res, _$RealDownloadResultImplErrorImpl>
    implements _$$RealDownloadResultImplErrorImplCopyWith<$Res> {
  __$$RealDownloadResultImplErrorImplCopyWithImpl(
      _$RealDownloadResultImplErrorImpl _value, $Res Function(_$RealDownloadResultImplErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadResultImpl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? errorMsg = null,
    Object? time = null,
  }) {
    return _then(_$RealDownloadResultImplErrorImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$RealDownloadResultImplErrorImpl implements RealDownloadResultImplError {
  const _$RealDownloadResultImplErrorImpl(
      {@JsonKey(name: 'domain') required this.url,
      @JsonKey(name: 'error_msg') required this.errorMsg,
      this.time = double.maxFinite,
      final String? $type})
      : $type = $type ?? 'error';

  @override
  @JsonKey(name: 'domain')
  final Uri url;
  @override
  @JsonKey(name: 'error_msg')
  final String errorMsg;
  @override
  @JsonKey()
  final num time;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DownloadResultImpl.error(url: $url, errorMsg: $errorMsg, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealDownloadResultImplErrorImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, errorMsg, time);

  /// Create a copy of DownloadResultImpl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RealDownloadResultImplErrorImplCopyWith<_$RealDownloadResultImplErrorImpl> get copyWith =>
      __$$RealDownloadResultImplErrorImplCopyWithImpl<_$RealDownloadResultImplErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'domain') Uri url, num time) $default, {
    required TResult Function(@JsonKey(name: 'domain') Uri url, double progress) pending,
    required TResult Function(@JsonKey(name: 'domain') Uri url, @JsonKey(name: 'error_msg') String errorMsg, num time)
        error,
  }) {
    return error(url, errorMsg, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'domain') Uri url, num time)? $default, {
    TResult? Function(@JsonKey(name: 'domain') Uri url, double progress)? pending,
    TResult? Function(@JsonKey(name: 'domain') Uri url, @JsonKey(name: 'error_msg') String errorMsg, num time)? error,
  }) {
    return error?.call(url, errorMsg, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'domain') Uri url, num time)? $default, {
    TResult Function(@JsonKey(name: 'domain') Uri url, double progress)? pending,
    TResult Function(@JsonKey(name: 'domain') Uri url, @JsonKey(name: 'error_msg') String errorMsg, num time)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(url, errorMsg, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RealDownloadResultImpl value) $default, {
    required TResult Function(RealDownloadResultImplPending value) pending,
    required TResult Function(RealDownloadResultImplError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RealDownloadResultImpl value)? $default, {
    TResult? Function(RealDownloadResultImplPending value)? pending,
    TResult? Function(RealDownloadResultImplError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RealDownloadResultImpl value)? $default, {
    TResult Function(RealDownloadResultImplPending value)? pending,
    TResult Function(RealDownloadResultImplError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RealDownloadResultImplErrorImplToJson(
      this,
    );
  }
}

abstract class RealDownloadResultImplError implements DownloadResultImpl, DownloadResultDone, DownloadResultError {
  const factory RealDownloadResultImplError(
      {@JsonKey(name: 'domain') required final Uri url,
      @JsonKey(name: 'error_msg') required final String errorMsg,
      final num time}) = _$RealDownloadResultImplErrorImpl;

  @override
  @JsonKey(name: 'domain')
  Uri get url;
  @JsonKey(name: 'error_msg')
  String get errorMsg;
  num get time;

  /// Create a copy of DownloadResultImpl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RealDownloadResultImplErrorImplCopyWith<_$RealDownloadResultImplErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
