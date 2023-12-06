import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_one/data/data.dart';

final weatherProvider = FutureProvider.family.autoDispose<String, String>(
  (ref, city) => getWeatherData(city),
);



//autoDispose use for many purpose. to close connection when using firebase and reset state when user leaves/re-enters a screen.

//family modifier has one purpose getting a unique provider based on external params. combine with futureprovider to fetch data based on specific id.