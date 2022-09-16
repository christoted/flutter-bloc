// ignore: file_names
import 'package:flutter/material.dart';
import 'package:grow_now_clone/repository/models/post.dart';
import 'package:grow_now_clone/services/getSinglePost.dart';

class PostDataProvider with ChangeNotifier {
  PostModel post = PostModel(id: 0, userId: 0, title: "test", body: "body");
  bool loading = false;

  getPostData(context) async {
    loading = true;
    post = await getSinglePostData(context);
    loading = false; 
    notifyListeners();
  }
}