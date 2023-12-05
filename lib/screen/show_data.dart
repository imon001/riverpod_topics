import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_one/provider/state_notifier_provider.dart';

class ShowWeather extends ConsumerWidget {
  const ShowWeather({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('counter'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          int countData = ref.watch(counterProvider);
          return Center(
            child: Text(countData.toString()),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
