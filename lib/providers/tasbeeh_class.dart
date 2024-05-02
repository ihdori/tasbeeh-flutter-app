import 'package:flutter_riverpod/flutter_riverpod.dart';

// State class to hold Tasbeeh data
class TasbeehState {
  final int count;
  final bool isFirst;
  final bool isSeconde;
  final bool isThird;
  final String text;
  final int toCount;

  const TasbeehState({
    required this.count,
    required this.isFirst,
    required this.isSeconde,
    required this.isThird,
    required this.text,
    required this.toCount,
  });

  TasbeehState copyWith({
    int? count,
    bool? isFirst,
    bool? isSeconde,
    bool? isThird,
    String? text,
    int? toCount,
  }) {
    return TasbeehState(
      count: count ?? this.count,
      isFirst: isFirst ?? this.isFirst,
      isSeconde: isSeconde ?? this.isSeconde,
      isThird: isThird ?? this.isThird,
      text: text ?? this.text,
      toCount: toCount ?? this.toCount,
    );
  }
}

// Tasbeeh StateNotifier class
class Tasbeeh extends StateNotifier<TasbeehState> {
  Tasbeeh()
      : super(
          const TasbeehState(
            count: 0,
            toCount: 34,
            isFirst: true,
            isSeconde: false,
            isThird: false,
            text: 'الله أكبر',
          ),
        );

  void increment() {
    state = state.copyWith(count: state.count + 1);
    cahngeText();
  }

  void reset() {
    state = const TasbeehState(
      count: 0,
      toCount: 34,
      isFirst: true,
      isSeconde: false,
      isThird: false,
      text: 'الله أكبر',
    );
  }

  void cahngeText() {
    if (state.isFirst && state.count == 34) {
      state = state.copyWith(
        text: 'الحمد لله',
        count: 0,
        toCount: 33,
        isSeconde: true,
        isFirst: false,
      );
    } else if (state.isSeconde && state.count == 33) {
      state = state.copyWith(
        text: 'سبحان الله',
        count: 0,
        isSeconde: false,
        isThird: true,
      );
    } else if (state.isThird && state.count == 33) {
      reset();
    }
  }
}
