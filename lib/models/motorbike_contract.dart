import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:motor_rental_shop/models/motorbike.dart';

part 'generated/motorbike_contract.freezed.dart';
part 'generated/motorbike_contract.g.dart';

@freezed
class MotorbikeContract with _$MotorbikeContract {
  factory MotorbikeContract({
    String? id,
    DateTime? rentalDate,
    DateTime? returnDate,
    Motorbike? motorbike,
  }) = _MotorbikeContract;

  factory MotorbikeContract.fromJson(Map<String, dynamic> json) =>
      _$MotorbikeContractFromJson(json);
}
