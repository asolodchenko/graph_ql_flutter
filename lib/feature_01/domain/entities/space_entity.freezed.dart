// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'space_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LaunchInfoEntityTearOff {
  const _$LaunchInfoEntityTearOff();

  _LaunchInfoEntity call({String? title, String? info}) {
    return _LaunchInfoEntity(
      title: title,
      info: info,
    );
  }
}

/// @nodoc
const $LaunchInfoEntity = _$LaunchInfoEntityTearOff();

/// @nodoc
mixin _$LaunchInfoEntity {
  String? get title => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LaunchInfoEntityCopyWith<LaunchInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchInfoEntityCopyWith<$Res> {
  factory $LaunchInfoEntityCopyWith(
          LaunchInfoEntity value, $Res Function(LaunchInfoEntity) then) =
      _$LaunchInfoEntityCopyWithImpl<$Res>;
  $Res call({String? title, String? info});
}

/// @nodoc
class _$LaunchInfoEntityCopyWithImpl<$Res>
    implements $LaunchInfoEntityCopyWith<$Res> {
  _$LaunchInfoEntityCopyWithImpl(this._value, this._then);

  final LaunchInfoEntity _value;
  // ignore: unused_field
  final $Res Function(LaunchInfoEntity) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LaunchInfoEntityCopyWith<$Res>
    implements $LaunchInfoEntityCopyWith<$Res> {
  factory _$LaunchInfoEntityCopyWith(
          _LaunchInfoEntity value, $Res Function(_LaunchInfoEntity) then) =
      __$LaunchInfoEntityCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? info});
}

/// @nodoc
class __$LaunchInfoEntityCopyWithImpl<$Res>
    extends _$LaunchInfoEntityCopyWithImpl<$Res>
    implements _$LaunchInfoEntityCopyWith<$Res> {
  __$LaunchInfoEntityCopyWithImpl(
      _LaunchInfoEntity _value, $Res Function(_LaunchInfoEntity) _then)
      : super(_value, (v) => _then(v as _LaunchInfoEntity));

  @override
  _LaunchInfoEntity get _value => super._value as _LaunchInfoEntity;

  @override
  $Res call({
    Object? title = freezed,
    Object? info = freezed,
  }) {
    return _then(_LaunchInfoEntity(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LaunchInfoEntity implements _LaunchInfoEntity {
  _$_LaunchInfoEntity({this.title, this.info});

  @override
  final String? title;
  @override
  final String? info;

  @override
  String toString() {
    return 'LaunchInfoEntity(title: $title, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LaunchInfoEntity &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  _$LaunchInfoEntityCopyWith<_LaunchInfoEntity> get copyWith =>
      __$LaunchInfoEntityCopyWithImpl<_LaunchInfoEntity>(this, _$identity);
}

abstract class _LaunchInfoEntity implements LaunchInfoEntity {
  factory _LaunchInfoEntity({String? title, String? info}) =
      _$_LaunchInfoEntity;

  @override
  String? get title;
  @override
  String? get info;
  @override
  @JsonKey(ignore: true)
  _$LaunchInfoEntityCopyWith<_LaunchInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
