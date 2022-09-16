
import 'package:grow_now_clone/secure_storage_service.dart';

class GlobalRepository {
   final storage = SecureStorageService();

   Future setUserToken(String token) async {
      await storage.setToken(token);
   }

   Future<String?> getTokenByKey(String key) async {
      return storage.getTokenByKey(key);
   }
}