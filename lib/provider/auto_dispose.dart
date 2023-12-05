import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class User extends ChangeNotifier {
  String userName = 'Imon';

  void changeName() {
    userName = 'CoodingWithImon';
    notifyListeners();
  }
}

final nameProvider = ChangeNotifierProvider.autoDispose<User>((ref) {
  return User();
});
