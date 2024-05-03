import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasbeeh/providers/daily_tasbeeh_provider/daily_tasbeeh_provider.dart';
import 'package:tasbeeh/utils/daily_tasbeeh_utils/custom_painter_shapes/frame_long.dart';
import 'package:tasbeeh/utils/daily_tasbeeh_utils/custom_painter_shapes/frame_shaort.dart';

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
  final CustomPainter shape;
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
  final int value;
  final text;
  final width;
  DailyTasbeeh({
    required this.value,
    required this.text,
    required this.width,
  }) : super(
          DailyTasbeehState(
            counted: 0,
            toCount: 100,
            text: text,
            value: value,
            shape: value != 5 && value != 6 ? FrameCustomPainterShort() : FrameCustomPainterLonge(),
            width: width,
          ),
        );
  void increment() {
    state = state.copyWith(counted: state.counted + 1);
  }

  updateValue(newValue) {
    final newText = changeText(newValue);
    state = state.copyWith(value: newValue, text: newText);
  }

  updateShape({required CustomPainter newShape, required double width}) {
    state = state.copyWith(shape: newShape, width: width);
  }

  changeShapeColor({required Color color}) {
    state = state.copyWith(shape: FrameCustomPainterShort(color: color));
  }
}
