import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:motor_rental_shop/models/user_role.dart';

part 'generated/manager.freezed.dart';
part 'generated/manager.g.dart';

@freezed
class Manager with _$Manager {
  factory Manager({
    String? id,
    String? username,
    String? password,
    UserRole? role,
    String? name,
    String? email,
    String? tel,
    String? address,
  }) = _Manager;

  factory Manager.fromJson(Map<String, dynamic> json) =>
      _$ManagerFromJson(json);
}
