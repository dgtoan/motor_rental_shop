// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../revenue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Revenue _$RevenueFromJson(Map<String, dynamic> json) {
  return _Revenue.fromJson(json);
}

/// @nodoc
mixin _$Revenue {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  Motorbike? get motorbike => throw _privateConstructorUsedError;
  List<ContractRevenue>? get listContractRevenue =>
      throw _privateConstructorUsedError;

  /// Serializes this Revenue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Revenue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RevenueCopyWith<Revenue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevenueCopyWith<$Res> {
  factory $RevenueCopyWith(Revenue value, $Res Function(Revenue) then) =
      _$RevenueCopyWithImpl<$Res, Revenue>;
  @useResult
  $Res call(
      {String? id,
      DateTime? startDate,
      DateTime? endDate,
      Motorbike? motorbike,
      List<ContractRevenue>? listContractRevenue});

  $MotorbikeCopyWith<$Res>? get motorbike;
}

/// @nodoc
class _$RevenueCopyWithImpl<$Res, $Val extends Revenue>
    implements $RevenueCopyWith<$Res> {
  _$RevenueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Revenue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? motorbike = freezed,
    Object? listContractRevenue = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      motorbike: freezed == motorbike
          ? _value.motorbike
          : motorbike // ignore: cast_nullable_to_non_nullable
              as Motorbike?,
      listContractRevenue: freezed == listContractRevenue
          ? _value.listContractRevenue
          : listContractRevenue // ignore: cast_nullable_to_non_nullable
              as List<ContractRevenue>?,
    ) as $Val);
  }

  /// Create a copy of Revenue
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
abstract class _$$RevenueImplCopyWith<$Res> implements $RevenueCopyWith<$Res> {
  factory _$$RevenueImplCopyWith(
          _$RevenueImpl value, $Res Function(_$RevenueImpl) then) =
      __$$RevenueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      DateTime? startDate,
      DateTime? endDate,
      Motorbike? motorbike,
      List<ContractRevenue>? listContractRevenue});

  @override
  $MotorbikeCopyWith<$Res>? get motorbike;
}

/// @nodoc
class __$$RevenueImplCopyWithImpl<$Res>
    extends _$RevenueCopyWithImpl<$Res, _$RevenueImpl>
    implements _$$RevenueImplCopyWith<$Res> {
  __$$RevenueImplCopyWithImpl(
      _$RevenueImpl _value, $Res Function(_$RevenueImpl) _then)
      : super(_value, _then);

  /// Create a copy of Revenue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? motorbike = freezed,
    Object? listContractRevenue = freezed,
  }) {
    return _then(_$RevenueImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      motorbike: freezed == motorbike
          ? _value.motorbike
          : motorbike // ignore: cast_nullable_to_non_nullable
              as Motorbike?,
      listContractRevenue: freezed == listContractRevenue
          ? _value._listContractRevenue
          : listContractRevenue // ignore: cast_nullable_to_non_nullable
              as List<ContractRevenue>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RevenueImpl implements _Revenue {
  _$RevenueImpl(
      {this.id,
      this.startDate,
      this.endDate,
      this.motorbike,
      final List<ContractRevenue>? listContractRevenue})
      : _listContractRevenue = listContractRevenue;

  factory _$RevenueImpl.fromJson(Map<String, dynamic> json) =>
      _$$RevenueImplFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final Motorbike? motorbike;
  final List<ContractRevenue>? _listContractRevenue;
  @override
  List<ContractRevenue>? get listContractRevenue {
    final value = _listContractRevenue;
    if (value == null) return null;
    if (_listContractRevenue is EqualUnmodifiableListView)
      return _listContractRevenue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Revenue(id: $id, startDate: $startDate, endDate: $endDate, motorbike: $motorbike, listContractRevenue: $listContractRevenue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RevenueImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.motorbike, motorbike) ||
                other.motorbike == motorbike) &&
            const DeepCollectionEquality()
                .equals(other._listContractRevenue, _listContractRevenue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, startDate, endDate,
      motorbike, const DeepCollectionEquality().hash(_listContractRevenue));

  /// Create a copy of Revenue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RevenueImplCopyWith<_$RevenueImpl> get copyWith =>
      __$$RevenueImplCopyWithImpl<_$RevenueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RevenueImplToJson(
      this,
    );
  }
}

abstract class _Revenue implements Revenue {
  factory _Revenue(
      {final String? id,
      final DateTime? startDate,
      final DateTime? endDate,
      final Motorbike? motorbike,
      final List<ContractRevenue>? listContractRevenue}) = _$RevenueImpl;

  factory _Revenue.fromJson(Map<String, dynamic> json) = _$RevenueImpl.fromJson;

  @override
  String? get id;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  Motorbike? get motorbike;
  @override
  List<ContractRevenue>? get listContractRevenue;

  /// Create a copy of Revenue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RevenueImplCopyWith<_$RevenueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
