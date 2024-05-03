import 'package:flutter_riverpod/flutter_riverpod.dart';

final dateProvider = Provider((ref) => DateTime.now());

final chageableTimeProvider = StateProvider((ref) {
  final time = ref.watch(dateProvider);
  return time.weekday;
});
