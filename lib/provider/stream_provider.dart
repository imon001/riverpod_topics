import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_one/data/data.dart';

final numberProvider = StreamProvider<int>(
  (ref) {
    return fetchNmbrs();
  },
);
