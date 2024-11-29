import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:motor_rental_shop/models/user_role.dart';

part 'generated/customer.freezed.dart';
part 'generated/customer.g.dart';

@freezed
class Customer with _$Customer {
  factory Customer({
    String? id,
    String? username,
    String? password,
    UserRole? role,
    String? name,
    String? email,
    String? tel,
    String? address,
    String? licenseNumber,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}
