import 'package:flutter/material.dart';

Row countedNumberBox({required BuildContext context, required counted, required toCountFor, double? width}) {
  const Radius raduis = Radius.circular(12);
  const double fontSize = 28;

  ///deaflut width is 80.0
  width = width ?? 80.0;

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // right number
      Container(
        alignment: Alignment.center,
        width: width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: raduis,
            bottomRight: raduis,
          ),
          color: Theme.of(context).primaryColor,
        ),
        child: Text(
          textAlign: TextAlign.center,
          counted.toString(),
          style: const TextStyle(
            fontSize: fontSize,
            color: Colors.white,
          ),
        ),
      ),

      // left number
      Container(
        width: width,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: raduis,
            bottomLeft: raduis,
          ),
          border: Border.all(
            color: Theme.of(context).primaryColor,
            style: BorderStyle.solid,
            width: 1.5,
          ),
          // color: Colors.green,
        ),
        child: Text(
          // textAlign: TextAlign.center,
          toCountFor.toString(),
          style: const TextStyle(
            fontSize: fontSize,
          ),
        ),
      ),
    ],
  );
}
