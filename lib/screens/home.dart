import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/post_model.dart';
import '../state/post_state.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        elevation: 5,
      ),
      body: Center(
        child: Consumer(builder: (context, ref, child) {
          PostState postData = ref.watch(getPostProvider);
          if (postData is InitialPostState) {
            return const Text('Press the button below to load posts');
          }
          if (postData is PostLoadingPostState) {
            return const CircularProgressIndicator();
          }
          if (postData is ErrorPostState) {
            return Text(postData.msg);
          }

          if (postData is PostLoadedPostState) {
            return _buildListView(postData);
          }
          return const Text("Nothing found");
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(getPostProvider.notifier).fetchPost();
        },
        child: const Icon(Icons.replay_outlined),
      ),
    );
  }

  _buildListView(PostLoadedPostState postData) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListView.builder(
          itemCount: postData.posts.length,
          itemBuilder: (ctx, index) {
            Post post = postData.posts[index];
            return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(post.id.toString()),
                ),
                title: Text(post.title.toString()),
              ),
            );
          }),
    );
  }
}
