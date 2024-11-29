// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../motorbike.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MotorbikeImpl _$$MotorbikeImplFromJson(Map<String, dynamic> json) =>
    _$MotorbikeImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      licensePlace: json['licensePlace'] as String?,
      type: json['type'] as String?,
      yearOfManufacture: (json['yearOfManufacture'] as num?)?.toInt(),
      dailyRentalPrice: (json['dailyRentalPrice'] as num?)?.toInt(),
      deposit: (json['deposit'] as num?)?.toInt(),
      color: json['color'] as String?,
      rentalStatus: json['rentalStatus'] as String?,
      motorbikeStatus: json['motorbikeStatus'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$MotorbikeImplToJson(_$MotorbikeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'licensePlace': instance.licensePlace,
      'type': instance.type,
      'yearOfManufacture': instance.yearOfManufacture,
      'dailyRentalPrice': instance.dailyRentalPrice,
      'deposit': instance.deposit,
      'color': instance.color,
      'rentalStatus': instance.rentalStatus,
      'motorbikeStatus': instance.motorbikeStatus,
      'description': instance.description,
    };
