import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasbeeh/providers/time_provider/time_provider.dart';

final widthProvider = Provider<double>(
  (ref) {
    final day = ref.watch(dateProvider).weekday;
    switch (day) {
      case 4:
        return 300;
      case 5:
        return 380;
      default:
        return 250;
    }
  },
);
