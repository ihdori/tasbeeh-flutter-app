import 'dart:ffi';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasbeeh/utils/text_to_say.dart';

class DailyTasbeehState {
  DailyTasbeehState({
    required this.counted,
    required this.toCount,
    required this.text,
    required this.value,
    required this.shape,
    required this.width,
  });
  final int counted;
  final int toCount;
  final String text;
  final int value;
  final shape;
  final double width;

  DailyTasbeehState copyWith({
    int? counted,
    int? toCount,
    String? text,
    int? value,
    double? width,
    shape,
  }) {
    return DailyTasbeehState(
      counted: counted ?? this.counted,
      toCount: toCount ?? this.toCount,
      text: text ?? this.text,
      value: value ?? this.value,
      shape: shape ?? this.shape,
      width: width ?? this.width,
    );
  }
}

class DailyTasbeeh extends StateNotifier<DailyTasbeehState> {
  DailyTasbeeh()
      : super(
          DailyTasbeehState(
            counted: 0,
            toCount: 100,
            text: 'يارب العالمين',
            value: 0,
            shape: null,
            width: 250.0,
          ),
        );
  void increment() {
    state = state.copyWith(counted: state.counted + 1);
  }

  void updateValue(newValue) {
    state = state.copyWith(value: newValue);
    changeText();
  }

  void changeText() {
    switch (state.value) {
      case 0:
        state = state.copyWith(text: 'يارب العالمين');
      case 1:
        state = state.copyWith(text: 'يا ذا الجلال و الإكرام');
      case 2:
        state = state.copyWith(text: 'يا قاضي الحاجات');
      case 3:
        state = state.copyWith(text: 'يا أرحم الراحمين');
      case 4:
        state = state.copyWith(text: 'ياحيُّ يا قيّوم');
      case 5:
        state = state.copyWith(text: 'لا إله إلا الله الملك الحق المبين');
      case 6:
        state = state.copyWith(text: 'اللهم صلِّ على محمد وآل محمد و عجِّل فرجهم');
    }
  }

  updateShape(newShape, double width) {
    if (state.shape == null && newShape != null) {
      state = state.copyWith(shape: newShape, width: width);
    }
  }
}
