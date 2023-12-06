import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/post_model.dart';
import '../services/http_get.dart';

final getPostProvider = StateNotifierProvider<PostNotifier, PostState>(
  (ref) => PostNotifier(),
);

@immutable
abstract class PostState {}

class InitialPostState extends PostState {}

class PostLoadingPostState extends PostState {}

class PostLoadedPostState extends PostState {
  PostLoadedPostState({required this.posts});
  final List<Post> posts;
}

class ErrorPostState extends PostState {
  final String msg;

  ErrorPostState({required this.msg});
}

class PostNotifier extends StateNotifier<PostState> {
  PostNotifier() : super(InitialPostState());

  void fetchPost() async {
    HttpPostGet httpPostGet = HttpPostGet();
    try {
      state = PostLoadingPostState();
      List<Post> posts = await httpPostGet.getPost();
      state = PostLoadedPostState(posts: posts);
    } catch (e) {
      state = ErrorPostState(msg: e.toString());
    }
  }
}
