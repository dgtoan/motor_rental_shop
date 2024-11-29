import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:motor_rental_shop/models/contract.dart';

part 'generated/contract_revenue.freezed.dart';
part 'generated/contract_revenue.g.dart';

@freezed
class ContractRevenue with _$ContractRevenue {
  factory ContractRevenue({
    String? id,
    Contract? contract,
  }) = _ContractRevenue;

  factory ContractRevenue.fromJson(Map<String, dynamic> json) =>
      _$ContractRevenueFromJson(json);
}
