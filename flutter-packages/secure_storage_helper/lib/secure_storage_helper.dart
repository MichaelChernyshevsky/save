// ignore_for_file: depend_on_referenced_packages

library secure_storage_helper;

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
 
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  Future<void> writeSecureData(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  Future<String> readSecureData(String key) async {
    final value = await storage.read(key: key) ?? '';
    return value;
  }

  Future<void> deleteSecureData(String key) async {
    await storage.delete(key: key);
  }
}
