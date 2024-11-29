// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../contract_revenue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractRevenueImpl _$$ContractRevenueImplFromJson(
        Map<String, dynamic> json) =>
    _$ContractRevenueImpl(
      id: json['id'] as String?,
      contract: json['contract'] == null
          ? null
          : Contract.fromJson(json['contract'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ContractRevenueImplToJson(
        _$ContractRevenueImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contract': instance.contract,
    };
