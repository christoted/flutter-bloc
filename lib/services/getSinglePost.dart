import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../repository/models/post.dart';

Future<PostModel> getSinglePostData(context) async {
  PostModel result = PostModel(id: 0, userId: 0, title: "title", body: "body"); 
  try {
    final response = await http.get(
       Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        }
    );
    if (response.statusCode == 200) {
      final item = json.decode(response.body);
      result = PostModel.fromJson(item);
    } else {

    }
  } catch(e) {
    
  }

  return result;
}

