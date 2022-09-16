import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
   static final _storage = FlutterSecureStorage();
   final _userTokenKey = "token";

   // Set Token 
   Future setToken(String token) async {
      await _storage.write(key: _userTokenKey, value: token);
   } 
   // Delete Token 
   Future deleteTokenByKey(String key) async {
      await _storage.delete(key: key);
   }

   Future<String?> getTokenByKey(String key) async {
    await _storage.read(key: key);
   }

   // Remove All 
   Future removeAllKey() async {
      await _storage.deleteAll();
   }
}