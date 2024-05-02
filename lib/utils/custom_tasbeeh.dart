import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasbeeh/providers/custom_tabeeh_provider/custom_tasbbeh_provider.dart';
import 'package:tasbeeh/providers/tasbeeh_class.dart';
import 'package:tasbeeh/utils/counted_number_box.dart';
import 'package:tasbeeh/utils/tasbeeh_button.dart';
import 'package:tasbeeh/utils/thanks_dialog.dart';

Consumer customTasbeeh(BuildContext context, TasbeehState tasbeeh) {
  final TextEditingController _textEditingController = TextEditingController();

  return Consumer(
    builder: (context, ref, child) {
      final customTasbeeh = ref.watch(customTasbeehProvider);
      ref.listen(
        customTasbeehProvider,
        (previous, next) {
          if (next.counted > 0) {}
          if (next.counted == next.toCount) {
            thanksDialog(context: context, tasbeehType: 'الذكر');
            ref.read(customTasbeehProvider.notifier).reset();
            _textEditingController.clear();
          }
        },
      );
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              countedNumberBox(
                context: context,
                counted: customTasbeeh.counted,
                toCountFor: customTasbeeh.toCount,
                width: 150,
              ),
              IconButton(
                padding: EdgeInsets.all(14),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.white,
                  ),
                  side: MaterialStatePropertyAll(
                    BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 1.5,
                    ),
                  ),
                ),
                onPressed: () {
                  ref.read(customTasbeehProvider.notifier).reset();
                },
                icon: Icon(
                  Icons.update,
                  color: Theme.of(context).primaryColor,
                  size: 32,
                ),
              ),
            ],
          ),
          // SizedBox(
          //   height: 10,
          // ),
          //TextField
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 95),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: TextField(
                onSubmitted: (value) {
                  if (value.isNotEmpty) {
                    //TODO:
                    if (customTasbeeh.counted < int.parse(value) && customTasbeeh.isCountedChanged && customTasbeeh.counted != 0) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            alignment: Alignment.center,
                            title: Text('خطأ في العدد'),
                            icon: Icon(
                              Icons.warning_amber_rounded,
                              color: Colors.amber,
                              size: 60,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            content: Text('الرقم الذي أدخلته أقل من العدد الذي قمت بالوصول إليه, الرجاء القيام بإعادة ضبط العداد'),
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  ref.read(customTasbeehProvider.notifier).reset();
                                  Navigator.pop(context);
                                },
                                child: Text('إعادة  ضبط العداد'),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('خروج'),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      int newValue = int.parse(value);
                      ref.read(customTasbeehProvider.notifier).updateToCountValue(newValue);
                    }
                  }
                },
                controller: _textEditingController,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'اضافة العدد من هنا',
                  hintStyle: Theme.of(context).textTheme.titleMedium,
                  border: InputBorder.none,
                  fillColor: Colors.grey.withOpacity(0.15),
                  filled: true,
                ),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          // TextField Explaination
          Text('قم بإضافة عدد الذكر الذي تريد في الحقل أعلاه'),
          SizedBox(
            height: 10,
          ),
          tasbeehButton(
              context: context,
              onPressed: () {
                ref.read(customTasbeehProvider.notifier).increment();
              }),

          SizedBox(
            height: 260,
          ),
        ],
      );
    },
  );
}
