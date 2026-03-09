import 'package:flutter/material.dart';

class StepButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final Color color;

  const StepButton
  (
    {super.key, 
    required this.icon,
    required this.onTap,
    this.color = Colors.white,
    }
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: onTap != null
              ? color.withValues(alpha: 0.15)
              : Colors.white.withValues(alpha: 0.04),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          color: onTap != null ? color : Colors.grey[700],
          size: 22,
        ),
      ),
    );
  }
}