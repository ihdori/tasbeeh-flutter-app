import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomTasbeehStatae {
  const CustomTasbeehStatae({required this.counted, required this.toCount, required this.isCountedChanged});
  final int counted;
  final int toCount;
  final bool isCountedChanged;

  copyWith({int? counted, int? toCount, bool? isCountedChanged}) {
    return CustomTasbeehStatae(
      counted: counted ?? this.counted,
      toCount: toCount ?? this.toCount,
      isCountedChanged: isCountedChanged ?? this.isCountedChanged,
    );
  }
}

class CutomTasbeeh extends StateNotifier<CustomTasbeehStatae> {
  CutomTasbeeh()
      : super(
          const CustomTasbeehStatae(
            counted: 0,
            toCount: 100,
            isCountedChanged: false,
          ),
        );

  void increment() {
    state = state.copyWith(counted: state.counted + 1);
  }

  void updateToCountValue(int newValue) {
    state = state.copyWith(
      toCount: newValue,
      isCountedChanged: true,
    );
  }

  void reset() {
    state = state.copyWith(
      counted: 0,
      toCount: 100,
      isCountedChanged: false,
    );
  }
}
