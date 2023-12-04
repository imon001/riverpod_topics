import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_one/provider/provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final testString = ref.watch(stringProvider);
    return Scaffold(
      body: Center(
        child: Text(testString),
      ),
    );
  }
}
