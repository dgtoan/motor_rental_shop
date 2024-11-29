import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:motor_rental_shop/models/user_role.dart';

part 'generated/user.freezed.dart';
part 'generated/user.g.dart';

@freezed
class User with _$User {
  factory User({
    String? id,
    String? username,
    String? password,
    UserRole? role,
    String? name,
    String? email,
    String? tel,
    String? address,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
