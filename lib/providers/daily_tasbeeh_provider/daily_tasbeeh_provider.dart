import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasbeeh/providers/daily_tasbeeh_provider/daily_tasbeeh_class.dart';

final dailyTasbeehProvider = StateNotifierProvider<DailyTasbeeh, DailyTasbeehState>(
  (ref) => DailyTasbeeh(),
);
