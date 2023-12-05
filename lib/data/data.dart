Stream<int> fetchNmbrs() {
  return Stream<int>.periodic(const Duration(seconds: 2), (number) => number).take(100);
}
