import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar tasbeehAppBar() {
  return AppBar(
    title: Text(
      'تطبيق تسبيح',
      style: GoogleFonts.ibmPlexSansArabic(
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
    ),
    centerTitle: true,
    bottom: const TabBar(
      tabs: [
        Tab(
          text: 'تسبيح الزهراء',
        ),
        Tab(
          text: 'أذكار الأيام',
        ),
        Tab(
          text: 'تسبيح مخصص',
        ),
      ],
    ),
  );
}
