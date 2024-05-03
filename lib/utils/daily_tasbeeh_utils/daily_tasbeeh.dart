import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasbeeh/providers/daily_tasbeeh_provider/daily_tasbeeh_provider.dart';
import 'package:tasbeeh/providers/time_provider/time_provider.dart';
import 'package:tasbeeh/utils/counted_number_box.dart';
import 'package:tasbeeh/utils/daily_tasbeeh_utils/custom_painter_shapes/frame_long.dart';
import 'package:tasbeeh/utils/daily_tasbeeh_utils/custom_painter_shapes/frame_shaort.dart';
import 'package:tasbeeh/utils/tasbeeh_button.dart';
import 'package:tasbeeh/utils/text_to_say.dart';
import 'package:tasbeeh/utils/thanks_dialog.dart';
import 'package:tasbeeh/utils/theme/light_theme.dart';

Consumer dailyTasbeeh() {
  return Consumer(
    builder: (context, ref, child) {
      final dailyTasbeeh = ref.watch(dailyTasbeehProvider);
      final day = ref.watch(chageableTimeProvider);
      ref.listen(
        dailyTasbeehProvider,
        (previous, next) {
          if (next.counted == next.toCount) {
            thanksDialog(context: context, tasbeehType: 'الذكر');
          }
        },
      );
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //this is the frame and text that user will say
          textToSay(
            context: context,
            shape: dailyTasbeeh.shape,
            text: dailyTasbeeh.text,
            width: dailyTasbeeh.width,
            fontSize: 20,
          ),
          countedNumberBox(
            context: context,
            counted: dailyTasbeeh.counted,
            toCountFor: dailyTasbeeh.toCount,
            width: 120,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 75),
            padding: const EdgeInsets.only(left: 8, right: 16),
            decoration: BoxDecoration(
              border: Border.all(color: lightTheme.primaryColor, width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: DropdownButton(
              value: day,
              onChanged: (newValue) {
                print(day);
                ref.read(dailyTasbeehProvider.notifier).updateValue(newValue);
                ref.read(chageableTimeProvider.notifier).update((state) => newValue);
                if (newValue == 5 || newValue == 6) {
                  ref.read(dailyTasbeehProvider.notifier).updateShape(
                        width: newValue == 5 ? 300 : 380,
                        newShape: FrameCustomPainterLonge(color: Theme.of(context).primaryColor),
                      );
                } else {
                  ref.read(dailyTasbeehProvider.notifier).updateShape(
                        width: 250,
                        newShape: FrameCustomPainterShort(color: Theme.of(context).primaryColor),
                      );
                }
              },
              hint: const Text('قم بتحديد اليوم'),
              underline: const SizedBox(),
              borderRadius: BorderRadius.circular(12),
              focusColor: Theme.of(context).primaryColor,
              iconEnabledColor: Theme.of(context).primaryColor,
              isExpanded: true,
              items: const <DropdownMenuItem>[
                DropdownMenuItem(
                  value: 0,
                  child: Text('السبت'),
                ),
                DropdownMenuItem(
                  value: 1,
                  child: Text('الأحد'),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Text('الإثنين'),
                ),
                DropdownMenuItem(
                  value: 3,
                  child: Text('الثلاثاء'),
                ),
                DropdownMenuItem(
                  value: 4,
                  child: Text('الأربعاء'),
                ),
                DropdownMenuItem(
                  value: 5,
                  child: Text('الخميس'),
                ),
                DropdownMenuItem(
                  value: 6,
                  child: Text('الجمعة'),
                ),
              ],
            ),
          ),
          tasbeehButton(
            context: context,
            onPressed: () {
              ref.read(dailyTasbeehProvider.notifier).increment();
            },
          ),
          const SizedBox(
            height: 180,
          ),
          Text(
            'ذكر يوم ${'الأحد'}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ],
      );
    },
  );
}
