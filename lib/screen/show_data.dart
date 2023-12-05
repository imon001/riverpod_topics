import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_one/provider/stream_provider.dart';

class ShowWeather extends ConsumerWidget {
  const ShowWeather({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch(numberProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
      ),
      body: asyncData.when(data: (data) {
        return Center(
          child: Text(data.toString()),
        );
      }, error: (error, stackTrace) {
        return Center(child: Text(error.toString()));
      }, loading: () {
        return const Center(child: CircularProgressIndicator());
      }),
    );
  }
}
