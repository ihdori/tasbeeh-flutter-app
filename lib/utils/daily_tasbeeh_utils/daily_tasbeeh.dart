import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasbeeh/providers/daily_tasbeeh_provider/daily_tasbeeh_provider.dart';
import 'package:tasbeeh/utils/counted_number_box.dart';
import 'package:tasbeeh/utils/daily_tasbeeh_utils/custom_painter_shapes/frame_long.dart';
import 'package:tasbeeh/utils/daily_tasbeeh_utils/custom_painter_shapes/frame_shaort.dart';
import 'package:tasbeeh/utils/tasbeeh_button.dart';
import 'package:tasbeeh/utils/text_to_say.dart';
import 'package:tasbeeh/utils/thanks_dialog.dart';

Consumer dailyTasbeeh() {
  return Consumer(
    builder: (context, ref, child) {
      final dailyTasbeeh = ref.watch(dailyTasbeehProvider);
      ref.listen(
        dailyTasbeehProvider,
        (previous, next) {
          if (next.counted == next.toCount) {
            thanksDialog(context: context, tasbeehType: 'الذكر');
          }
          // if (next.value == 5 || next.value == 6) {
          //   ref.read(dailyTasbeehProvider.notifier).updateShape(
          //         newShape: FrameCustomPainterLonge(),
          //       );
          //   print('-----------------------------5555555-------------------------------');
          // }
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
              border: Border.all(color: Theme.of(context).primaryColor, width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: DropdownButton(
              onChanged: (newValue) {
                ref.read(dailyTasbeehProvider.notifier).updateValue(newValue);
                if (newValue == 5 || newValue == 6) {
                  ref.read(dailyTasbeehProvider.notifier).updateShape(
                        width: newValue == 5 ? 300 : 380,
                        newShape: FrameCustomPainterLonge(color: Theme.of(context).primaryColor),
                      );
                  print('Value changed');
                } else {
                  ref.read(dailyTasbeehProvider.notifier).updateShape(
                        width: 250,
                        newShape: FrameCustomPainterShort(color: Theme.of(context).primaryColor),
                      );
                }
              },
              hint: Text('قم بتحديد اليوم'),
              underline: const SizedBox(),
              borderRadius: BorderRadius.circular(12),
              focusColor: Theme.of(context).primaryColor,
              iconEnabledColor: Theme.of(context).primaryColor,
              isExpanded: true,
              value: dailyTasbeeh.value,
              items: const <DropdownMenuItem>[
                DropdownMenuItem(
                  child: Text('السبت'),
                  value: 0,
                ),
                DropdownMenuItem(
                  child: Text('الأحد'),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text('الإثنين'),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text('الثلاثاء'),
                  value: 3,
                ),
                DropdownMenuItem(
                  child: Text('الأربعاء'),
                  value: 4,
                ),
                DropdownMenuItem(
                  child: Text('الخميس'),
                  value: 5,
                ),
                DropdownMenuItem(
                  child: Text('الجمعة'),
                  value: 6,
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
