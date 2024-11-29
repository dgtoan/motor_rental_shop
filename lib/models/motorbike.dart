import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/motorbike.freezed.dart';
part 'generated/motorbike.g.dart';

@freezed
class Motorbike with _$Motorbike {
  factory Motorbike({
    String? id,
    String? name,
    String? licensePlace,
    String? type,
    int? yearOfManufacture,
    int? dailyRentalPrice,
    int? deposit,
    String? color,
    String? rentalStatus,
    String? motorbikeStatus,
    String? description,
  }) = _Motorbike;

  factory Motorbike.fromJson(Map<String, dynamic> json) =>
      _$MotorbikeFromJson(json);
}
