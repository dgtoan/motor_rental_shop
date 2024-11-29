// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractImpl _$$ContractImplFromJson(Map<String, dynamic> json) =>
    _$ContractImpl(
      id: json['id'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      status: json['status'] as String?,
      manager: json['manager'] == null
          ? null
          : Manager.fromJson(json['manager'] as Map<String, dynamic>),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      listMotorbikeContract: (json['listMotorbikeContract'] as List<dynamic>?)
          ?.map((e) => MotorbikeContract.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContractImplToJson(_$ContractImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createDate': instance.createDate?.toIso8601String(),
      'status': instance.status,
      'manager': instance.manager,
      'customer': instance.customer,
      'listMotorbikeContract': instance.listMotorbikeContract,
    };
