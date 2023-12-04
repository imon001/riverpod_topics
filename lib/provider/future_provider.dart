import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_one/data/data.dart';

final weatherProvider = FutureProvider.autoDispose<String>(
  (ref) => getWeatherData(),
);

//futureprovider keep async data as cache .to not use this add autoDispose.