// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../revenue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RevenueImpl _$$RevenueImplFromJson(Map<String, dynamic> json) =>
    _$RevenueImpl(
      id: json['id'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      motorbike: json['motorbike'] == null
          ? null
          : Motorbike.fromJson(json['motorbike'] as Map<String, dynamic>),
      listContractRevenue: (json['listContractRevenue'] as List<dynamic>?)
          ?.map((e) => ContractRevenue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RevenueImplToJson(_$RevenueImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'motorbike': instance.motorbike,
      'listContractRevenue': instance.listContractRevenue,
    };
