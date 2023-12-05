import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class User extends ChangeNotifier {
  String userName = 'Imon';

  void changeName() {
    userName = 'CoodingWithImon';
    notifyListeners();
  }
}

final nameProvider = ChangeNotifierProvider<User>((ref) {
  return User();
});
