// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../motorbike_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MotorbikeContractImpl _$$MotorbikeContractImplFromJson(
        Map<String, dynamic> json) =>
    _$MotorbikeContractImpl(
      id: json['id'] as String?,
      rentalDate: json['rentalDate'] == null
          ? null
          : DateTime.parse(json['rentalDate'] as String),
      returnDate: json['returnDate'] == null
          ? null
          : DateTime.parse(json['returnDate'] as String),
      motorbike: json['motorbike'] == null
          ? null
          : Motorbike.fromJson(json['motorbike'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MotorbikeContractImplToJson(
        _$MotorbikeContractImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rentalDate': instance.rentalDate?.toIso8601String(),
      'returnDate': instance.returnDate?.toIso8601String(),
      'motorbike': instance.motorbike,
    };
