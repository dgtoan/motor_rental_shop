import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:motor_rental_shop/models/contract.dart';
import 'package:motor_rental_shop/repositories/pocketbase_service.dart';
import 'package:pocketbase/pocketbase.dart';

class ContractRepository extends PocketBaseService {
  Future<Either<List<Contract>, String>> searchContract(
      String customerSearchName) async {
    try {
      final records = await con.collection('contracts').getFullList(
            filter: 'customer.name ~ "$customerSearchName", status = "pending"',
            expand: 'customer, manager, listMotorbikeContract.motorbike',
            fields: 'id, status, expand.*, created, updated',
          );
      if (records.isEmpty) {
        return right('No contract found');
      }
      final newData = records.map((e) {
        final newData = e.data;
        newData['listMotorbikeContract'] =
            e.data['expand']['listMotorbikeContract'];
        newData['listMotorbikeContract'] =
            newData['listMotorbikeContract'].map((e) {
          final newData = e;
          newData['motorbike'] = e['expand']['motorbike'];
          newData.remove('expand');
          return newData;
        }).toList();

        newData['createDate'] = e.data['created'];
        newData['customer'] = e.data['expand']['customer'];
        newData['manager'] = e.data['expand']['manager'];
        newData.remove('expand');
        return newData;
      }).toList();

      // debugPrint(newData.toString());

      final list = newData.map((e) => Contract.fromJson(e)).toList();
      for (var e in list) {
        debugPrint(e.toString());
      }
      return left(list);
    } on ClientException catch (clientException) {
      debugPrint('Error: ${clientException.response['message']}');
      return right(clientException.response['message'] ?? 'An error occurred');
    } catch (e) {
      debugPrint('Error: $e');
      return right('An error occurred');
    }
  }

  Future<String?> updateContract(Contract contract) async {
    try {
      if (contract.id == null) {
        return 'Contract ID not found';
      }
      final contractJson = contract.toJson();
      contractJson.remove('id');
      await con.collection('contracts').update(
            contract.id!,
            body: contractJson,
          );
      return null;
    } on ClientException catch (clientException) {
      return clientException.response['message'];
    } catch (e) {
      return 'An error occurred';
    }
  }
}
