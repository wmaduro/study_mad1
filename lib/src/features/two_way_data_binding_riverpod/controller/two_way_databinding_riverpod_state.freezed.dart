// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'two_way_databinding_riverpod_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TwoWayDataBindingRiverpodState {
  String get campo1 => throw _privateConstructorUsedError;
  String get campo2 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TwoWayDataBindingRiverpodStateCopyWith<TwoWayDataBindingRiverpodState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwoWayDataBindingRiverpodStateCopyWith<$Res> {
  factory $TwoWayDataBindingRiverpodStateCopyWith(
          TwoWayDataBindingRiverpodState value,
          $Res Function(TwoWayDataBindingRiverpodState) then) =
      _$TwoWayDataBindingRiverpodStateCopyWithImpl<$Res>;
  $Res call({String campo1, String campo2});
}

/// @nodoc
class _$TwoWayDataBindingRiverpodStateCopyWithImpl<$Res>
    implements $TwoWayDataBindingRiverpodStateCopyWith<$Res> {
  _$TwoWayDataBindingRiverpodStateCopyWithImpl(this._value, this._then);

  final TwoWayDataBindingRiverpodState _value;
  // ignore: unused_field
  final $Res Function(TwoWayDataBindingRiverpodState) _then;

  @override
  $Res call({
    Object? campo1 = freezed,
    Object? campo2 = freezed,
  }) {
    return _then(_value.copyWith(
      campo1: campo1 == freezed
          ? _value.campo1
          : campo1 // ignore: cast_nullable_to_non_nullable
              as String,
      campo2: campo2 == freezed
          ? _value.campo2
          : campo2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TwoWayDataBindingRiverpodStateCopyWith<$Res>
    implements $TwoWayDataBindingRiverpodStateCopyWith<$Res> {
  factory _$$_TwoWayDataBindingRiverpodStateCopyWith(
          _$_TwoWayDataBindingRiverpodState value,
          $Res Function(_$_TwoWayDataBindingRiverpodState) then) =
      __$$_TwoWayDataBindingRiverpodStateCopyWithImpl<$Res>;
  @override
  $Res call({String campo1, String campo2});
}

/// @nodoc
class __$$_TwoWayDataBindingRiverpodStateCopyWithImpl<$Res>
    extends _$TwoWayDataBindingRiverpodStateCopyWithImpl<$Res>
    implements _$$_TwoWayDataBindingRiverpodStateCopyWith<$Res> {
  __$$_TwoWayDataBindingRiverpodStateCopyWithImpl(
      _$_TwoWayDataBindingRiverpodState _value,
      $Res Function(_$_TwoWayDataBindingRiverpodState) _then)
      : super(_value, (v) => _then(v as _$_TwoWayDataBindingRiverpodState));

  @override
  _$_TwoWayDataBindingRiverpodState get _value =>
      super._value as _$_TwoWayDataBindingRiverpodState;

  @override
  $Res call({
    Object? campo1 = freezed,
    Object? campo2 = freezed,
  }) {
    return _then(_$_TwoWayDataBindingRiverpodState(
      campo1: campo1 == freezed
          ? _value.campo1
          : campo1 // ignore: cast_nullable_to_non_nullable
              as String,
      campo2: campo2 == freezed
          ? _value.campo2
          : campo2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TwoWayDataBindingRiverpodState
    extends _TwoWayDataBindingRiverpodState {
  const _$_TwoWayDataBindingRiverpodState(
      {this.campo1 = '1', this.campo2 = '2'})
      : super._();

  @override
  @JsonKey()
  final String campo1;
  @override
  @JsonKey()
  final String campo2;

  @override
  String toString() {
    return 'TwoWayDataBindingRiverpodState(campo1: $campo1, campo2: $campo2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwoWayDataBindingRiverpodState &&
            const DeepCollectionEquality().equals(other.campo1, campo1) &&
            const DeepCollectionEquality().equals(other.campo2, campo2));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(campo1),
      const DeepCollectionEquality().hash(campo2));

  @JsonKey(ignore: true)
  @override
  _$$_TwoWayDataBindingRiverpodStateCopyWith<_$_TwoWayDataBindingRiverpodState>
      get copyWith => __$$_TwoWayDataBindingRiverpodStateCopyWithImpl<
          _$_TwoWayDataBindingRiverpodState>(this, _$identity);
}

abstract class _TwoWayDataBindingRiverpodState
    extends TwoWayDataBindingRiverpodState {
  const factory _TwoWayDataBindingRiverpodState(
      {final String campo1,
      final String campo2}) = _$_TwoWayDataBindingRiverpodState;
  const _TwoWayDataBindingRiverpodState._() : super._();

  @override
  String get campo1;
  @override
  String get campo2;
  @override
  @JsonKey(ignore: true)
  _$$_TwoWayDataBindingRiverpodStateCopyWith<_$_TwoWayDataBindingRiverpodState>
      get copyWith => throw _privateConstructorUsedError;
}
