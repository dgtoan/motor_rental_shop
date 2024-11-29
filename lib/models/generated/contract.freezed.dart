// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Contract _$ContractFromJson(Map<String, dynamic> json) {
  return _Contract.fromJson(json);
}

/// @nodoc
mixin _$Contract {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get createDate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  Manager? get manager => throw _privateConstructorUsedError;
  Customer? get customer => throw _privateConstructorUsedError;
  List<MotorbikeContract>? get listMotorbikeContract =>
      throw _privateConstructorUsedError;

  /// Serializes this Contract to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Contract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractCopyWith<Contract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractCopyWith<$Res> {
  factory $ContractCopyWith(Contract value, $Res Function(Contract) then) =
      _$ContractCopyWithImpl<$Res, Contract>;
  @useResult
  $Res call(
      {String? id,
      DateTime? createDate,
      String? status,
      Manager? manager,
      Customer? customer,
      List<MotorbikeContract>? listMotorbikeContract});

  $ManagerCopyWith<$Res>? get manager;
  $CustomerCopyWith<$Res>? get customer;
}

/// @nodoc
class _$ContractCopyWithImpl<$Res, $Val extends Contract>
    implements $ContractCopyWith<$Res> {
  _$ContractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Contract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createDate = freezed,
    Object? status = freezed,
    Object? manager = freezed,
    Object? customer = freezed,
    Object? listMotorbikeContract = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as Manager?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      listMotorbikeContract: freezed == listMotorbikeContract
          ? _value.listMotorbikeContract
          : listMotorbikeContract // ignore: cast_nullable_to_non_nullable
              as List<MotorbikeContract>?,
    ) as $Val);
  }

  /// Create a copy of Contract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ManagerCopyWith<$Res>? get manager {
    if (_value.manager == null) {
      return null;
    }

    return $ManagerCopyWith<$Res>(_value.manager!, (value) {
      return _then(_value.copyWith(manager: value) as $Val);
    });
  }

  /// Create a copy of Contract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractImplCopyWith<$Res>
    implements $ContractCopyWith<$Res> {
  factory _$$ContractImplCopyWith(
          _$ContractImpl value, $Res Function(_$ContractImpl) then) =
      __$$ContractImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      DateTime? createDate,
      String? status,
      Manager? manager,
      Customer? customer,
      List<MotorbikeContract>? listMotorbikeContract});

  @override
  $ManagerCopyWith<$Res>? get manager;
  @override
  $CustomerCopyWith<$Res>? get customer;
}

/// @nodoc
class __$$ContractImplCopyWithImpl<$Res>
    extends _$ContractCopyWithImpl<$Res, _$ContractImpl>
    implements _$$ContractImplCopyWith<$Res> {
  __$$ContractImplCopyWithImpl(
      _$ContractImpl _value, $Res Function(_$ContractImpl) _then)
      : super(_value, _then);

  /// Create a copy of Contract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createDate = freezed,
    Object? status = freezed,
    Object? manager = freezed,
    Object? customer = freezed,
    Object? listMotorbikeContract = freezed,
  }) {
    return _then(_$ContractImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as Manager?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      listMotorbikeContract: freezed == listMotorbikeContract
          ? _value._listMotorbikeContract
          : listMotorbikeContract // ignore: cast_nullable_to_non_nullable
              as List<MotorbikeContract>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractImpl implements _Contract {
  _$ContractImpl(
      {this.id,
      this.createDate,
      this.status,
      this.manager,
      this.customer,
      final List<MotorbikeContract>? listMotorbikeContract})
      : _listMotorbikeContract = listMotorbikeContract;

  factory _$ContractImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractImplFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? createDate;
  @override
  final String? status;
  @override
  final Manager? manager;
  @override
  final Customer? customer;
  final List<MotorbikeContract>? _listMotorbikeContract;
  @override
  List<MotorbikeContract>? get listMotorbikeContract {
    final value = _listMotorbikeContract;
    if (value == null) return null;
    if (_listMotorbikeContract is EqualUnmodifiableListView)
      return _listMotorbikeContract;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Contract(id: $id, createDate: $createDate, status: $status, manager: $manager, customer: $customer, listMotorbikeContract: $listMotorbikeContract)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality()
                .equals(other._listMotorbikeContract, _listMotorbikeContract));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createDate, status, manager,
      customer, const DeepCollectionEquality().hash(_listMotorbikeContract));

  /// Create a copy of Contract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractImplCopyWith<_$ContractImpl> get copyWith =>
      __$$ContractImplCopyWithImpl<_$ContractImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractImplToJson(
      this,
    );
  }
}

abstract class _Contract implements Contract {
  factory _Contract(
      {final String? id,
      final DateTime? createDate,
      final String? status,
      final Manager? manager,
      final Customer? customer,
      final List<MotorbikeContract>? listMotorbikeContract}) = _$ContractImpl;

  factory _Contract.fromJson(Map<String, dynamic> json) =
      _$ContractImpl.fromJson;

  @override
  String? get id;
  @override
  DateTime? get createDate;
  @override
  String? get status;
  @override
  Manager? get manager;
  @override
  Customer? get customer;
  @override
  List<MotorbikeContract>? get listMotorbikeContract;

  /// Create a copy of Contract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractImplCopyWith<_$ContractImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
