import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/post_model.dart';

class HttpPostGet {
  static const String _url = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<Post>> getPost() async {
    List<Post> posts = [];

    try {
      http.Response response = await http.get(Uri.parse(_url));
      if (response.statusCode == 200) {
        List<dynamic> postList = jsonDecode(response.body);
        for (var element in postList) {
          Post post = Post.fromJson(element);
          posts.add(post);
        }
      }
    } catch (e) {
      throw Exception(e.toString());
    }
    return posts;
  }
}
