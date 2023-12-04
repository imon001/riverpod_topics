Future<String> getWeatherData() async {
  return await Future.delayed(
    const Duration(seconds: 3),
    () => '33°C',
  );
}
