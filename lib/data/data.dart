Future<String> getWeatherData(String city) async {
  return await Future.delayed(
    const Duration(seconds: 2),
    () => 'City: $city | Temp: 33°C',
  );
}
