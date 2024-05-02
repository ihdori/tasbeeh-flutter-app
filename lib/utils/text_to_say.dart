import 'package:flutter/material.dart';

CustomPaint textToSay({
  required text,
  required BuildContext context,
  shape,
  double width = 200,
  double fontSize = 24,
}) {
  return CustomPaint(
    size: Size(200, (200 * 0.2781667727562062).toDouble()),
    painter: shape,
    child: Container(
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: fontSize),
      ),
    ),
  );
}
