import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasbeeh/providers/tasbeeh_class.dart';

final tasbeehProvider = StateNotifierProvider<Tasbeeh, TasbeehState>(
  (ref) => Tasbeeh(),
);
