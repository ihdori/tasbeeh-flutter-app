import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<dynamic> thanksDialog({required BuildContext context, tasbeehType}) {
  tasbeehType = tasbeehType ?? 'التسبيح';
  return showDialog(
    barrierDismissible: false,
    // barrierColor: Theme.of(context).primaryColor.withOpacity(0.6),
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        scrollable: false,
        title: Text(
          'تم إكمال $tasbeehType',
          textAlign: TextAlign.center,
        ),
        titleTextStyle: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 28,
          fontFamily: GoogleFonts.ibmPlexSansArabic().fontFamily,
        ),
        content: Container(
          height: 100,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'تقبّل الله طاعاتكم',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              // ElevatedButton(
              //   style: ButtonStyle(minimumSize: MaterialStatePropertyAll(Size(300, 40))),
              //   onPressed: () {},
              //   child: Text('الخروج'),
              // ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                padding: EdgeInsets.all(8),
                child: Text(
                  'الخروج',
                  style: TextStyle(fontSize: 20),
                ),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                color: Theme.of(context).primaryColor,
                minWidth: 300,
              )
            ],
          ),
        ),
      );
    },
  );
}
