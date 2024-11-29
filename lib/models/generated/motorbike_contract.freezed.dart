// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../motorbike_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MotorbikeContract _$MotorbikeContractFromJson(Map<String, dynamic> json) {
  return _MotorbikeContract.fromJson(json);
}

/// @nodoc
mixin _$MotorbikeContract {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get rentalDate => throw _privateConstructorUsedError;
  DateTime? get returnDate => throw _privateConstructorUsedError;
  Motorbike? get motorbike => throw _privateConstructorUsedError;

  /// Serializes this MotorbikeContract to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MotorbikeContract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MotorbikeContractCopyWith<MotorbikeContract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotorbikeContractCopyWith<$Res> {
  factory $MotorbikeContractCopyWith(
          MotorbikeContract value, $Res Function(MotorbikeContract) then) =
      _$MotorbikeContractCopyWithImpl<$Res, MotorbikeContract>;
  @useResult
  $Res call(
      {String? id,
      DateTime? rentalDate,
      DateTime? returnDate,
      Motorbike? motorbike});

  $MotorbikeCopyWith<$Res>? get motorbike;
}

/// @nodoc
class _$MotorbikeContractCopyWithImpl<$Res, $Val extends MotorbikeContract>
    implements $MotorbikeContractCopyWith<$Res> {
  _$MotorbikeContractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MotorbikeContract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rentalDate = freezed,
    Object? returnDate = freezed,
    Object? motorbike = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      rentalDate: freezed == rentalDate
          ? _value.rentalDate
          : rentalDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      returnDate: freezed == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      motorbike: freezed == motorbike
          ? _value.motorbike
          : motorbike // ignore: cast_nullable_to_non_nullable
              as Motorbike?,
    ) as $Val);
  }

  /// Create a copy of MotorbikeContract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MotorbikeCopyWith<$Res>? get motorbike {
    if (_value.motorbike == null) {
      return null;
    }

    return $MotorbikeCopyWith<$Res>(_value.motorbike!, (value) {
      return _then(_value.copyWith(motorbike: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MotorbikeContractImplCopyWith<$Res>
    implements $MotorbikeContractCopyWith<$Res> {
  factory _$$MotorbikeContractImplCopyWith(_$MotorbikeContractImpl value,
          $Res Function(_$MotorbikeContractImpl) then) =
      __$$MotorbikeContractImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      DateTime? rentalDate,
      DateTime? returnDate,
      Motorbike? motorbike});

  @override
  $MotorbikeCopyWith<$Res>? get motorbike;
}

/// @nodoc
class __$$MotorbikeContractImplCopyWithImpl<$Res>
    extends _$MotorbikeContractCopyWithImpl<$Res, _$MotorbikeContractImpl>
    implements _$$MotorbikeContractImplCopyWith<$Res> {
  __$$MotorbikeContractImplCopyWithImpl(_$MotorbikeContractImpl _value,
      $Res Function(_$MotorbikeContractImpl) _then)
      : super(_value, _then);

  /// Create a copy of MotorbikeContract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rentalDate = freezed,
    Object? returnDate = freezed,
    Object? motorbike = freezed,
  }) {
    return _then(_$MotorbikeContractImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      rentalDate: freezed == rentalDate
          ? _value.rentalDate
          : rentalDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      returnDate: freezed == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      motorbike: freezed == motorbike
          ? _value.motorbike
          : motorbike // ignore: cast_nullable_to_non_nullable
              as Motorbike?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MotorbikeContractImpl implements _MotorbikeContract {
  _$MotorbikeContractImpl(
      {this.id, this.rentalDate, this.returnDate, this.motorbike});

  factory _$MotorbikeContractImpl.fromJson(Map<String, dynamic> json) =>
      _$$MotorbikeContractImplFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? rentalDate;
  @override
  final DateTime? returnDate;
  @override
  final Motorbike? motorbike;

  @override
  String toString() {
    return 'MotorbikeContract(id: $id, rentalDate: $rentalDate, returnDate: $returnDate, motorbike: $motorbike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MotorbikeContractImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rentalDate, rentalDate) ||
                other.rentalDate == rentalDate) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate) &&
            (identical(other.motorbike, motorbike) ||
                other.motorbike == motorbike));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, rentalDate, returnDate, motorbike);

  /// Create a copy of MotorbikeContract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MotorbikeContractImplCopyWith<_$MotorbikeContractImpl> get copyWith =>
      __$$MotorbikeContractImplCopyWithImpl<_$MotorbikeContractImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MotorbikeContractImplToJson(
      this,
    );
  }
}

abstract class _MotorbikeContract implements MotorbikeContract {
  factory _MotorbikeContract(
      {final String? id,
      final DateTime? rentalDate,
      final DateTime? returnDate,
      final Motorbike? motorbike}) = _$MotorbikeContractImpl;

  factory _MotorbikeContract.fromJson(Map<String, dynamic> json) =
      _$MotorbikeContractImpl.fromJson;

  @override
  String? get id;
  @override
  DateTime? get rentalDate;
  @override
  DateTime? get returnDate;
  @override
  Motorbike? get motorbike;

  /// Create a copy of MotorbikeContract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MotorbikeContractImplCopyWith<_$MotorbikeContractImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
