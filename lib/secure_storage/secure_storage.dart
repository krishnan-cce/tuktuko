import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static final FlutterSecureStorage _storage = FlutterSecureStorage();


  Future<void> writeString(String key, String value) async {
    await _storage.write(key: key, value: value);
  }


  Future<String?> readString(String key) async {
    return await _storage.read(key: key);
  }


  Future<void> writeBool(String key, bool value) async {
    await _storage.write(key: key, value: value.toString());
  }


  Future<bool> readBool(String key) async {
    String? value = await _storage.read(key: key);
    return value?.toLowerCase() == 'true';
  }
  // Future<bool?> readBool(String key) async {
  //   String? value = await _storage.read(key: key);
  //   return value != null ? value.toLowerCase() == 'true' : null;
  // }


  Future<void> writeInt(String key, int value) async {
    await _storage.write(key: key, value: value.toString());
  }


  Future<int?> readInt(String key) async {
    String? value = await _storage.read(key: key);
    return value != null ? int.tryParse(value) : null;
  }


  Future<void> writeDouble(String key, double value) async {
    await _storage.write(key: key, value: value.toString());
  }


  Future<double?> readDouble(String key) async {
    String? value = await _storage.read(key: key);
    return value != null ? double.tryParse(value) : null;
  }



  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  Future<void> clearAll() async {
    await _storage.deleteAll();
  }
}