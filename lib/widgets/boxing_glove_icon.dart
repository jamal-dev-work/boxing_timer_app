import 'package:flutter/material.dart';

class BoxingGloveIcon extends StatelessWidget {
  const BoxingGloveIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        color: const Color(0xFFE53935).withValues(alpha: 0.15),
        shape: BoxShape.circle,
      ),
      child: const Center(
        child: Text('🥊', style: TextStyle(fontSize: 36)),
      ),
    );
  }
}