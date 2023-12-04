import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_one/provider/state_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          int count = ref.watch(dataProvider);
          return Center(
            child: Text(count.toString()),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(dataProvider.notifier).state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
