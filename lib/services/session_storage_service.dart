import 'dart:convert';
import 'dart:html';

import 'package:motor_rental_shop/models/motorbike.dart';
import 'package:motor_rental_shop/models/user.dart';

class SessionStorageService {
  static final sessionStorage = window.sessionStorage;

  static final String currentUserKey = 'currentUser';
  static final String motorSearchNameKey = 'motorSearchName';
  static final String listSearchMotorbikeKey = 'listSearchMotorbike';
  static final String editMotorIdKey = 'editMotorId';
  static final String currentEditMotorKey = 'currentEditMotorId';

  // ############################ Current User ############################
  static User? getCurrentUser() {
    final currentUser = sessionStorage[currentUserKey];
    if (currentUser == null) {
      return null;
    }

    return User.fromJson(jsonDecode(currentUser));
  }

  static void setCurrentUser(User user) {
    sessionStorage[currentUserKey] = jsonEncode(user.toJson());
  }

  static void removeCurrentUser() {
    sessionStorage.remove(currentUserKey);
  }

  // ######################### Motor Search Name #########################
  static String? getMotorSearchName() {
    return sessionStorage[motorSearchNameKey];
  }

  static void setMotorSearchName(String motorSearchName) {
    sessionStorage[motorSearchNameKey] = motorSearchName;
  }

  static void removeMotorSearchName() {
    sessionStorage.remove(motorSearchNameKey);
  }

  // ####################### List Search Motorbike #######################
  static List<Motorbike>? getListSearchMotorbike() {
    final listSearchMotorbike = sessionStorage[listSearchMotorbikeKey];
    if (listSearchMotorbike == null) {
      return null;
    }

    final list = jsonDecode(listSearchMotorbike)['items'] as List;
    return list.map((e) => Motorbike.fromJson(e)).toList();
  }

  static void setListSearchMotorbike(List<Motorbike> listSearchMotorbike) {
    final listJson = listSearchMotorbike.map((e) => e.toJson()).toList();
    sessionStorage[listSearchMotorbikeKey] = jsonEncode({'items': listJson});
  }

  static void removeListSearchMotorbike() {
    sessionStorage.remove(listSearchMotorbikeKey);
  }

  // ########################### Edit Motor ID ###########################
  static String? getEditMotorId() {
    return sessionStorage[editMotorIdKey];
  }

  static void setEditMotorId(String editMotorId) {
    sessionStorage[editMotorIdKey] = editMotorId;
  }

  static void removeEditMotorId() {
    sessionStorage.remove(editMotorIdKey);
  }

  // ######################### Current Edit Motor #########################
  static Motorbike? getCurrentEditMotor() {
    final currentEditMotor = sessionStorage[currentEditMotorKey];
    if (currentEditMotor == null) {
      return null;
    }

    return Motorbike.fromJson(jsonDecode(currentEditMotor));
  }

  static void setCurrentEditMotor(Motorbike motorbike) {
    sessionStorage[currentEditMotorKey] = jsonEncode(motorbike.toJson());
  }

  static void removeCurrentEditMotor() {
    sessionStorage.remove(currentEditMotorKey);
  }
}
