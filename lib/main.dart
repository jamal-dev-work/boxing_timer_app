import 'package:boxing_timer_app/screens/setup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BoxingTimerApp());
}

class BoxingTimerApp extends StatelessWidget {
  const BoxingTimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boxing Timer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE53935),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF121212),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: const SetupScreenState(),
    );
  }
}
