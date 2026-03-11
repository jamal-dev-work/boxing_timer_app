import 'package:boxing_timer_app/widgets/step_buttom.dart';
import 'package:flutter/material.dart';

class TimeUnit extends StatelessWidget {
  final String label;
  final int value;
  final int max;
  final Color accentColor;
  final VoidCallback? decrement;
  final VoidCallback? increment;

  const TimeUnit({
    super.key, 
    required this.label,
    required this.value,
    required this.max,
    required this.accentColor, 
    required this.decrement, 
    required this.increment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepButton(
          icon: Icons.keyboard_arrow_up,
          onTap: value < max ? increment : null,
          color: accentColor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            value.toString().padLeft(2, '0'),
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
        StepButton(
          icon: Icons.keyboard_arrow_down,
          onTap: value > 0 ? decrement : null,
          color: accentColor,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            color: accentColor.withValues(alpha: 0.7),
            fontWeight: FontWeight.w700,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}