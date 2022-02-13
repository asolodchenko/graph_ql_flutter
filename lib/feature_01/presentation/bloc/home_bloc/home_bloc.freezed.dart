// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _FetchData fetchData() {
    return const _FetchData();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchData value) fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchData value)? fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchData value)? fetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$FetchDataCopyWith<$Res> {
  factory _$FetchDataCopyWith(
          _FetchData value, $Res Function(_FetchData) then) =
      __$FetchDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchDataCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$FetchDataCopyWith<$Res> {
  __$FetchDataCopyWithImpl(_FetchData _value, $Res Function(_FetchData) _then)
      : super(_value, (v) => _then(v as _FetchData));

  @override
  _FetchData get _value => super._value as _FetchData;
}

/// @nodoc

class _$_FetchData implements _FetchData {
  const _$_FetchData();

  @override
  String toString() {
    return 'HomeEvent.fetchData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
  }) {
    return fetchData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchData,
  }) {
    return fetchData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchData value) fetchData,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchData value)? fetchData,
  }) {
    return fetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchData value)? fetchData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class _FetchData implements HomeEvent {
  const factory _FetchData() = _$_FetchData;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeStateInitial initial() {
    return const _HomeStateInitial();
  }

  _HomeStateLoading loading() {
    return const _HomeStateLoading();
  }

  _HomeStateError error({required String errorMessage}) {
    return _HomeStateError(
      errorMessage: errorMessage,
    );
  }

  _HomeStateLoadedData loadedData({required List<LaunchInfoEntity> launches}) {
    return _HomeStateLoadedData(
      launches: launches,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<LaunchInfoEntity> launches) loadedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<LaunchInfoEntity> launches)? loadedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<LaunchInfoEntity> launches)? loadedData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateError value) error,
    required TResult Function(_HomeStateLoadedData value) loadedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateError value)? error,
    TResult Function(_HomeStateLoadedData value)? loadedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateError value)? error,
    TResult Function(_HomeStateLoadedData value)? loadedData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$HomeStateInitialCopyWith<$Res> {
  factory _$HomeStateInitialCopyWith(
          _HomeStateInitial value, $Res Function(_HomeStateInitial) then) =
      __$HomeStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeStateInitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateInitialCopyWith<$Res> {
  __$HomeStateInitialCopyWithImpl(
      _HomeStateInitial _value, $Res Function(_HomeStateInitial) _then)
      : super(_value, (v) => _then(v as _HomeStateInitial));

  @override
  _HomeStateInitial get _value => super._value as _HomeStateInitial;
}

/// @nodoc

class _$_HomeStateInitial implements _HomeStateInitial {
  const _$_HomeStateInitial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _HomeStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<LaunchInfoEntity> launches) loadedData,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<LaunchInfoEntity> launches)? loadedData,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<LaunchInfoEntity> launches)? loadedData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateError value) error,
    required TResult Function(_HomeStateLoadedData value) loadedData,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateError value)? error,
    TResult Function(_HomeStateLoadedData value)? loadedData,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateError value)? error,
    TResult Function(_HomeStateLoadedData value)? loadedData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HomeStateInitial implements HomeState {
  const factory _HomeStateInitial() = _$_HomeStateInitial;
}

/// @nodoc
abstract class _$HomeStateLoadingCopyWith<$Res> {
  factory _$HomeStateLoadingCopyWith(
          _HomeStateLoading value, $Res Function(_HomeStateLoading) then) =
      __$HomeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeStateLoadingCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateLoadingCopyWith<$Res> {
  __$HomeStateLoadingCopyWithImpl(
      _HomeStateLoading _value, $Res Function(_HomeStateLoading) _then)
      : super(_value, (v) => _then(v as _HomeStateLoading));

  @override
  _HomeStateLoading get _value => super._value as _HomeStateLoading;
}

/// @nodoc

class _$_HomeStateLoading implements _HomeStateLoading {
  const _$_HomeStateLoading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _HomeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<LaunchInfoEntity> launches) loadedData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<LaunchInfoEntity> launches)? loadedData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<LaunchInfoEntity> launches)? loadedData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateError value) error,
    required TResult Function(_HomeStateLoadedData value) loadedData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateError value)? error,
    TResult Function(_HomeStateLoadedData value)? loadedData,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateError value)? error,
    TResult Function(_HomeStateLoadedData value)? loadedData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeStateLoading implements HomeState {
  const factory _HomeStateLoading() = _$_HomeStateLoading;
}

/// @nodoc
abstract class _$HomeStateErrorCopyWith<$Res> {
  factory _$HomeStateErrorCopyWith(
          _HomeStateError value, $Res Function(_HomeStateError) then) =
      __$HomeStateErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$HomeStateErrorCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateErrorCopyWith<$Res> {
  __$HomeStateErrorCopyWithImpl(
      _HomeStateError _value, $Res Function(_HomeStateError) _then)
      : super(_value, (v) => _then(v as _HomeStateError));

  @override
  _HomeStateError get _value => super._value as _HomeStateError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_HomeStateError(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeStateError implements _HomeStateError {
  const _$_HomeStateError({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'HomeState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeStateError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$HomeStateErrorCopyWith<_HomeStateError> get copyWith =>
      __$HomeStateErrorCopyWithImpl<_HomeStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<LaunchInfoEntity> launches) loadedData,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<LaunchInfoEntity> launches)? loadedData,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<LaunchInfoEntity> launches)? loadedData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateError value) error,
    required TResult Function(_HomeStateLoadedData value) loadedData,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateError value)? error,
    TResult Function(_HomeStateLoadedData value)? loadedData,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateError value)? error,
    TResult Function(_HomeStateLoadedData value)? loadedData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HomeStateError implements HomeState {
  const factory _HomeStateError({required String errorMessage}) =
      _$_HomeStateError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$HomeStateErrorCopyWith<_HomeStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HomeStateLoadedDataCopyWith<$Res> {
  factory _$HomeStateLoadedDataCopyWith(_HomeStateLoadedData value,
          $Res Function(_HomeStateLoadedData) then) =
      __$HomeStateLoadedDataCopyWithImpl<$Res>;
  $Res call({List<LaunchInfoEntity> launches});
}

/// @nodoc
class __$HomeStateLoadedDataCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateLoadedDataCopyWith<$Res> {
  __$HomeStateLoadedDataCopyWithImpl(
      _HomeStateLoadedData _value, $Res Function(_HomeStateLoadedData) _then)
      : super(_value, (v) => _then(v as _HomeStateLoadedData));

  @override
  _HomeStateLoadedData get _value => super._value as _HomeStateLoadedData;

  @override
  $Res call({
    Object? launches = freezed,
  }) {
    return _then(_HomeStateLoadedData(
      launches: launches == freezed
          ? _value.launches
          : launches // ignore: cast_nullable_to_non_nullable
              as List<LaunchInfoEntity>,
    ));
  }
}

/// @nodoc

class _$_HomeStateLoadedData implements _HomeStateLoadedData {
  const _$_HomeStateLoadedData({required this.launches});

  @override
  final List<LaunchInfoEntity> launches;

  @override
  String toString() {
    return 'HomeState.loadedData(launches: $launches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeStateLoadedData &&
            const DeepCollectionEquality().equals(other.launches, launches));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(launches));

  @JsonKey(ignore: true)
  @override
  _$HomeStateLoadedDataCopyWith<_HomeStateLoadedData> get copyWith =>
      __$HomeStateLoadedDataCopyWithImpl<_HomeStateLoadedData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<LaunchInfoEntity> launches) loadedData,
  }) {
    return loadedData(launches);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<LaunchInfoEntity> launches)? loadedData,
  }) {
    return loadedData?.call(launches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<LaunchInfoEntity> launches)? loadedData,
    required TResult orElse(),
  }) {
    if (loadedData != null) {
      return loadedData(launches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateError value) error,
    required TResult Function(_HomeStateLoadedData value) loadedData,
  }) {
    return loadedData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateError value)? error,
    TResult Function(_HomeStateLoadedData value)? loadedData,
  }) {
    return loadedData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateError value)? error,
    TResult Function(_HomeStateLoadedData value)? loadedData,
    required TResult orElse(),
  }) {
    if (loadedData != null) {
      return loadedData(this);
    }
    return orElse();
  }
}

abstract class _HomeStateLoadedData implements HomeState {
  const factory _HomeStateLoadedData(
      {required List<LaunchInfoEntity> launches}) = _$_HomeStateLoadedData;

  List<LaunchInfoEntity> get launches;
  @JsonKey(ignore: true)
  _$HomeStateLoadedDataCopyWith<_HomeStateLoadedData> get copyWith =>
      throw _privateConstructorUsedError;
}
