import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

ElevatedButton tasbeehButton({required BuildContext context, required onPressed}) {
  return ElevatedButton(
    style: ButtonStyle(
      overlayColor: MaterialStatePropertyAll(
        Theme.of(context).splashColor,
      ),
      backgroundColor: MaterialStatePropertyAll(
        Theme.of(context).primaryColor,
      ),
    ),
    onPressed: () {
      onPressed();
    },
    child: Container(
      alignment: Alignment.center,
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        // color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        'إضغط',
        style: GoogleFonts.ibmPlexSansArabic(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    ),
  );
}
