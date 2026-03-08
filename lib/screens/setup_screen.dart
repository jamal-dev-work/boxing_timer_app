import 'package:boxing_timer_app/widgets/boxing_glove_icon.dart';
import 'package:flutter/material.dart';

class SetupScreenState extends StatelessWidget {
  const SetupScreenState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: SafeArea
      (
        child: SingleChildScrollView
        (
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Column
          (
            // crossAxisAlignment: CrossAxisAlignment.center,
            children:  
            [
              const BoxingGloveIcon(),
              const SizedBox(height: 12),
              const Text(
                'BOXING TIMER',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFFE53935),
                  letterSpacing: 4,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Set up your training session',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[400],
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        )
      ),
    );
  }
}