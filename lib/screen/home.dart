import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'show_data.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Theme.of(context).colorScheme.primary,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => const ShowWeather(),
            ));
          },
          child: const Text('Check Weather'),
        ),
      ),
    );
  }
}
