// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../contract_revenue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContractRevenue _$ContractRevenueFromJson(Map<String, dynamic> json) {
  return _ContractRevenue.fromJson(json);
}

/// @nodoc
mixin _$ContractRevenue {
  String? get id => throw _privateConstructorUsedError;
  Contract? get contract => throw _privateConstructorUsedError;

  /// Serializes this ContractRevenue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContractRevenue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractRevenueCopyWith<ContractRevenue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractRevenueCopyWith<$Res> {
  factory $ContractRevenueCopyWith(
          ContractRevenue value, $Res Function(ContractRevenue) then) =
      _$ContractRevenueCopyWithImpl<$Res, ContractRevenue>;
  @useResult
  $Res call({String? id, Contract? contract});

  $ContractCopyWith<$Res>? get contract;
}

/// @nodoc
class _$ContractRevenueCopyWithImpl<$Res, $Val extends ContractRevenue>
    implements $ContractRevenueCopyWith<$Res> {
  _$ContractRevenueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContractRevenue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? contract = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      contract: freezed == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract?,
    ) as $Val);
  }

  /// Create a copy of ContractRevenue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContractCopyWith<$Res>? get contract {
    if (_value.contract == null) {
      return null;
    }

    return $ContractCopyWith<$Res>(_value.contract!, (value) {
      return _then(_value.copyWith(contract: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractRevenueImplCopyWith<$Res>
    implements $ContractRevenueCopyWith<$Res> {
  factory _$$ContractRevenueImplCopyWith(_$ContractRevenueImpl value,
          $Res Function(_$ContractRevenueImpl) then) =
      __$$ContractRevenueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, Contract? contract});

  @override
  $ContractCopyWith<$Res>? get contract;
}

/// @nodoc
class __$$ContractRevenueImplCopyWithImpl<$Res>
    extends _$ContractRevenueCopyWithImpl<$Res, _$ContractRevenueImpl>
    implements _$$ContractRevenueImplCopyWith<$Res> {
  __$$ContractRevenueImplCopyWithImpl(
      _$ContractRevenueImpl _value, $Res Function(_$ContractRevenueImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContractRevenue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? contract = freezed,
  }) {
    return _then(_$ContractRevenueImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      contract: freezed == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractRevenueImpl implements _ContractRevenue {
  _$ContractRevenueImpl({this.id, this.contract});

  factory _$ContractRevenueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractRevenueImplFromJson(json);

  @override
  final String? id;
  @override
  final Contract? contract;

  @override
  String toString() {
    return 'ContractRevenue(id: $id, contract: $contract)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractRevenueImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contract, contract) ||
                other.contract == contract));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, contract);

  /// Create a copy of ContractRevenue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractRevenueImplCopyWith<_$ContractRevenueImpl> get copyWith =>
      __$$ContractRevenueImplCopyWithImpl<_$ContractRevenueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractRevenueImplToJson(
      this,
    );
  }
}

abstract class _ContractRevenue implements ContractRevenue {
  factory _ContractRevenue({final String? id, final Contract? contract}) =
      _$ContractRevenueImpl;

  factory _ContractRevenue.fromJson(Map<String, dynamic> json) =
      _$ContractRevenueImpl.fromJson;

  @override
  String? get id;
  @override
  Contract? get contract;

  /// Create a copy of ContractRevenue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractRevenueImplCopyWith<_$ContractRevenueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
