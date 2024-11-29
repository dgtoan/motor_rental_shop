import 'package:freezed_annotation/freezed_annotation.dart';

enum UserRole {
  @JsonValue('Manager')
  manager,
  @JsonValue('Customer')
  customer;
}
