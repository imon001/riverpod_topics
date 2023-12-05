import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_one/provider/change_notifier_provider.dart';

class ShowData extends ConsumerWidget {
  const ShowData({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          var countData = ref.watch(nameProvider);
          return Center(
            child: Text(countData.userName.toString()),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(nameProvider.notifier).changeName();
        },
        child: const Icon(Icons.change_circle),
      ),
    );
  }
}
