import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasbeeh/providers/custom_tabeeh_provider/custom_tasbeeh_class.dart';

final customTasbeehProvider = StateNotifierProvider<CutomTasbeeh, CustomTasbeehStatae>(
  (ref) => CutomTasbeeh(),
);
