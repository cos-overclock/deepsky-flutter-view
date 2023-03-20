// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_operate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarOperate {
  String get name => throw _privateConstructorUsedError;
  String get stateText => throw _privateConstructorUsedError;
  String get onText => throw _privateConstructorUsedError;
  String get offText => throw _privateConstructorUsedError;
  bool get on => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarOperateCopyWith<CarOperate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarOperateCopyWith<$Res> {
  factory $CarOperateCopyWith(
          CarOperate value, $Res Function(CarOperate) then) =
      _$CarOperateCopyWithImpl<$Res, CarOperate>;
  @useResult
  $Res call(
      {String name, String stateText, String onText, String offText, bool on});
}

/// @nodoc
class _$CarOperateCopyWithImpl<$Res, $Val extends CarOperate>
    implements $CarOperateCopyWith<$Res> {
  _$CarOperateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? stateText = null,
    Object? onText = null,
    Object? offText = null,
    Object? on = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stateText: null == stateText
          ? _value.stateText
          : stateText // ignore: cast_nullable_to_non_nullable
              as String,
      onText: null == onText
          ? _value.onText
          : onText // ignore: cast_nullable_to_non_nullable
              as String,
      offText: null == offText
          ? _value.offText
          : offText // ignore: cast_nullable_to_non_nullable
              as String,
      on: null == on
          ? _value.on
          : on // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarOperateCopyWith<$Res>
    implements $CarOperateCopyWith<$Res> {
  factory _$$_CarOperateCopyWith(
          _$_CarOperate value, $Res Function(_$_CarOperate) then) =
      __$$_CarOperateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String stateText, String onText, String offText, bool on});
}

/// @nodoc
class __$$_CarOperateCopyWithImpl<$Res>
    extends _$CarOperateCopyWithImpl<$Res, _$_CarOperate>
    implements _$$_CarOperateCopyWith<$Res> {
  __$$_CarOperateCopyWithImpl(
      _$_CarOperate _value, $Res Function(_$_CarOperate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? stateText = null,
    Object? onText = null,
    Object? offText = null,
    Object? on = null,
  }) {
    return _then(_$_CarOperate(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stateText: null == stateText
          ? _value.stateText
          : stateText // ignore: cast_nullable_to_non_nullable
              as String,
      onText: null == onText
          ? _value.onText
          : onText // ignore: cast_nullable_to_non_nullable
              as String,
      offText: null == offText
          ? _value.offText
          : offText // ignore: cast_nullable_to_non_nullable
              as String,
      on: null == on
          ? _value.on
          : on // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CarOperate with DiagnosticableTreeMixin implements _CarOperate {
  const _$_CarOperate(
      {required this.name,
      required this.stateText,
      required this.onText,
      required this.offText,
      required this.on});

  @override
  final String name;
  @override
  final String stateText;
  @override
  final String onText;
  @override
  final String offText;
  @override
  final bool on;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CarOperate(name: $name, stateText: $stateText, onText: $onText, offText: $offText, on: $on)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CarOperate'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('stateText', stateText))
      ..add(DiagnosticsProperty('onText', onText))
      ..add(DiagnosticsProperty('offText', offText))
      ..add(DiagnosticsProperty('on', on));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarOperate &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.stateText, stateText) ||
                other.stateText == stateText) &&
            (identical(other.onText, onText) || other.onText == onText) &&
            (identical(other.offText, offText) || other.offText == offText) &&
            (identical(other.on, on) || other.on == on));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, stateText, onText, offText, on);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarOperateCopyWith<_$_CarOperate> get copyWith =>
      __$$_CarOperateCopyWithImpl<_$_CarOperate>(this, _$identity);
}

abstract class _CarOperate implements CarOperate {
  const factory _CarOperate(
      {required final String name,
      required final String stateText,
      required final String onText,
      required final String offText,
      required final bool on}) = _$_CarOperate;

  @override
  String get name;
  @override
  String get stateText;
  @override
  String get onText;
  @override
  String get offText;
  @override
  bool get on;
  @override
  @JsonKey(ignore: true)
  _$$_CarOperateCopyWith<_$_CarOperate> get copyWith =>
      throw _privateConstructorUsedError;
}
