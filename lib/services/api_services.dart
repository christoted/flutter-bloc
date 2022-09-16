
import 'dart:convert';

import 'package:http/http.dart';

class ApiServices {
  Future<Response> signIn(data) async {
    return await post(Uri.parse('https://www.grownow.id/auth/login'),
    headers: <String, String>  {
        'Content-Type' : 'application/json'
      },
    body: jsonEncode(data)
    );
  }
}