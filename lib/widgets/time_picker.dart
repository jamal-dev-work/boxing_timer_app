import 'package:boxing_timer_app/widgets/time_unit.dart';
import 'package:flutter/material.dart';

class TimePicker extends StatelessWidget {
  final int minutes;
  final int seconds;
  final Color color;
  final VoidCallback incrementRoundMinutes;
  final VoidCallback decrementRoundMinutes;
  final VoidCallback incrementRoundSeconds;
  final VoidCallback decrementRoundSeconds;
  const TimePicker
  (
    {
      super.key, 
      required this.minutes, 
      required this.seconds, 
      required this.color, 
      required this.incrementRoundMinutes, 
      required this.decrementRoundMinutes, 
      required this.incrementRoundSeconds, 
      required this.decrementRoundSeconds
    }
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TimeUnit(
          label: 'MIN',
          value: minutes,
          max: 59,
          accentColor: color,
          increment: incrementRoundMinutes,
          decrement: decrementRoundMinutes,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            ':',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ),
        TimeUnit(
          label: 'SEC',
          value: seconds,
          max: 59,
          accentColor: color,
          increment: incrementRoundSeconds,
          decrement: decrementRoundSeconds,
        ),
      ],
    );
  }
}