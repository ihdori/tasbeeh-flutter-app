import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasbeeh/providers/daily_tasbeeh_provider/daily_tasbeeh_class.dart';
import 'package:tasbeeh/providers/daily_tasbeeh_provider/width_provider.dart';
import 'package:tasbeeh/providers/time_provider/time_provider.dart';

final dailyTasbeehProvider = StateNotifierProvider<DailyTasbeeh, DailyTasbeehState>(
  (ref) {
    final date = ref.watch(dateProvider);
    final width = ref.watch(widthProvider);
    final day = date.weekday;
    final text = changeText(day);
    DailyTasbeeh dailyTasbeeh = DailyTasbeeh(
      value: day,
      text: text,
      width: width,
    );
    return dailyTasbeeh;
  },
);

String changeText(int value) {
  switch (value) {
    case 0:
      return 'يارب العالمين';
    case 1:
      return 'يا ذا الجلال و الإكرام';
    case 2:
      return 'يا قاضي الحاجات';
    case 3:
      return 'يا أرحم الراحمين';
    case 4:
      return 'ياحيُّ يا قيّوم';
    case 5:
      return 'لا إله إلا الله الملك الحق المبين';
    case 6:
      return 'اللهم صلِّ على محمد وآل محمد و عجِّل فرجهم';
    default:
      return '-يارب العالمين-';
  }
}
