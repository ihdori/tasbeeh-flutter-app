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
    //Saterday
    case 6:
      return 'يارب العالمين';
    //Sunday
    case 7:
      return 'يا ذا الجلال و الإكرام';
    //Monday
    case 1:
      return 'يا قاضي الحاجات';
    //Tuesday
    case 2:
      return 'يا أرحم الراحمين';
    //Wednesday
    case 3:
      return 'ياحيُّ يا قيّوم';
    //Thursday
    case 4:
      return 'لا إله إلا الله الملك الحق المبين';
    //Firday
    case 5:
      return 'اللهم صلِّ على محمد وآل محمد و عجِّل فرجهم';
    default:
      return '-يارب العالمين-';
  }
}
