// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManagerImpl _$$ManagerImplFromJson(Map<String, dynamic> json) =>
    _$ManagerImpl(
      id: json['id'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      role: $enumDecodeNullable(_$UserRoleEnumMap, json['role']),
      name: json['name'] as String?,
      email: json['email'] as String?,
      tel: json['tel'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$ManagerImplToJson(_$ManagerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'role': _$UserRoleEnumMap[instance.role],
      'name': instance.name,
      'email': instance.email,
      'tel': instance.tel,
      'address': instance.address,
    };

const _$UserRoleEnumMap = {
  UserRole.manager: 'manager',
  UserRole.customer: 'customer',
};
