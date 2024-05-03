import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasbeeh/providers/tasbeeh_class.dart';
import 'package:tasbeeh/providers/tasbeeh_provider.dart';
import 'package:tasbeeh/utils/counted_number_box.dart';
import 'package:tasbeeh/utils/daily_tasbeeh_utils/custom_painter_shapes/frame_shaort.dart';
import 'package:tasbeeh/utils/tasbeeh_button.dart';
import 'package:tasbeeh/utils/text_to_say.dart';

Padding alzehraaTasbeeh(TasbeehState tasbeeh, BuildContext context, WidgetRef ref) {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        textToSay(
          text: tasbeeh.text,
          context: context,
          shape: FrameCustomPainterShort(
            color: Theme.of(context).primaryColor,
          ),
        ),
        countedNumberBox(
          context: context,
          counted: tasbeeh.count,
          toCountFor: tasbeeh.toCount,
        ),
        SizedBox(
          height: 20,
        ),
        tasbeehButton(
          context: context,
          onPressed: () {
            ref.read(tasbeehProvider.notifier).increment();
          },
        ),
        const SizedBox(
          height: 150,
        ),
        // حديث فضل التسبيح
        Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'عن الإمام محمد الباقر عليه السلام:',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(' «من سبّح تسبيح فاطمة عليها السلام ثم استغفر غفر له، وهي مائة باللسان، وألف في الميزان، ويطرد الشيطان ويرضي الرحمن»'),
              const Text('وسائل الشيعة:4/1023'),
            ],
          ),
        )
      ],
    ),
  );
}
