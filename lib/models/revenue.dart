import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:motor_rental_shop/models/contract_revenue.dart';
import 'package:motor_rental_shop/models/motorbike.dart';

part 'generated/revenue.freezed.dart';
part 'generated/revenue.g.dart';

@freezed
class Revenue with _$Revenue {
  factory Revenue({
    String? id,
    DateTime? startDate,
    DateTime? endDate,
    Motorbike? motorbike,
    List<ContractRevenue>? listContractRevenue,
  }) = _Revenue;

  factory Revenue.fromJson(Map<String, dynamic> json) =>
      _$RevenueFromJson(json);
}
