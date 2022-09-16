
import 'package:grow_now_clone/services/api_services.dart';
import 'package:http/http.dart';

class LoginRepository {
  final _apiServices = ApiServices();

  Future<Response> requestSignInEmail(data) async {
    return await _apiServices.signIn(data);
  }
}