// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      id: json['id'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      role: $enumDecodeNullable(_$UserRoleEnumMap, json['role']),
      name: json['name'] as String?,
      email: json['email'] as String?,
      tel: json['tel'] as String?,
      address: json['address'] as String?,
      licenseNumber: json['licenseNumber'] as String?,
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'role': _$UserRoleEnumMap[instance.role],
      'name': instance.name,
      'email': instance.email,
      'tel': instance.tel,
      'address': instance.address,
      'licenseNumber': instance.licenseNumber,
    };

const _$UserRoleEnumMap = {
  UserRole.manager: 'Manager',
  UserRole.customer: 'Customer',
};
