import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:motor_rental_shop/models/motorbike.dart';
import 'package:motor_rental_shop/repositories/pocketbase_service.dart';
import 'package:pocketbase/pocketbase.dart';

class MotorbikeRepository extends PocketBaseService {
  Future<Either<List<Motorbike>, String>> searchMotor(
      String motorSearchName) async {
    try {
      final records = await con.collection('motorbikes').getFullList(
            filter: 'name ~ "$motorSearchName"',
          );
      if (records.isEmpty) {
        return right('No motorbike found');
      }

      final list = records.map((e) => Motorbike.fromJson(e.data)).toList();
      debugPrint(list.toString());
      return left(list);
    } on ClientException catch (clientException) {
      debugPrint('Error: ${clientException.response['message']}');
      return right(clientException.response['message'] ?? 'An error occurred');
    } catch (e) {
      return right('An error occurred');
    }
  }

  Future<String?> createMotor(Motorbike motorbike) async {
    try {
      final motorbikeJson = motorbike.toJson();
      motorbikeJson.remove('id');
      motorbikeJson['rentalStatus'] = 'available';
      await con.collection('motorbikes').create(body: motorbikeJson);
      return null;
    } on ClientException catch (clientException) {
      return clientException.response['message'];
    } catch (e) {
      return 'An error occurred';
    }
  }

  Future<String?> updateMotor(Motorbike motorbike) async {
    try {
      if (motorbike.id == null) {
        return 'Motorbike ID not found';
      }
      final motorbikeJson = motorbike.toJson();
      motorbikeJson.remove('id');
      await con.collection('motorbikes').update(
            motorbike.id!,
            body: motorbikeJson,
          );
      return null;
    } on ClientException catch (clientException) {
      return clientException.response['message'];
    } catch (e) {
      return 'An error occurred';
    }
  }
}
