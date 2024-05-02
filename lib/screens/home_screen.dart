import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasbeeh/providers/tasbeeh_provider.dart';
import 'package:tasbeeh/utils/alzehraa_tasbeeh.dart';
import 'package:tasbeeh/utils/custom_tasbeeh.dart';
import 'package:tasbeeh/utils/daily_tasbeeh_utils/daily_tasbeeh.dart';
import 'package:tasbeeh/utils/tasbeeh_app_bar.dart';
import 'package:tasbeeh/utils/thanks_dialog.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasbeeh = ref.watch(tasbeehProvider);
    ref.listen(
      tasbeehProvider,
      (previous, next) {
        if (next.isThird == true && next.count == 33) {
          thanksDialog(context: context);
        }
      },
    );
    return DefaultTabController(
      length: 3,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: tasbeehAppBar(),
          body: TabBarView(
            children: [
              // تسبيح السيدة الزهراء
              alzehraaTasbeeh(tasbeeh, context, ref),
              //أذكار الأيام
              dailyTasbeeh(),
              //تسبيح مخصص
              customTasbeeh(context, tasbeeh),
            ],
          ),
        ),
      ),
    );
  }
}
