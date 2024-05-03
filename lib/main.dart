import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasbeeh/screens/home_screen.dart';
import 'package:tasbeeh/utils/theme/light_theme.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تسبيح',
      theme: lightTheme,
      home: const HomePage(),
    );
  }
}
