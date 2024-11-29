import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:motor_rental_shop/models/customer.dart';
import 'package:motor_rental_shop/models/manager.dart';
import 'package:motor_rental_shop/models/motorbike_contract.dart';

part 'generated/contract.freezed.dart';
part 'generated/contract.g.dart';

@freezed
class Contract with _$Contract {
  factory Contract({
    String? id,
    DateTime? createDate,
    String? status,
    Manager? manager,
    Customer? customer,
    List<MotorbikeContract>? listMotorbikeContract,
  }) = _Contract;

  factory Contract.fromJson(Map<String, dynamic> json) =>
      _$ContractFromJson(json);
}
