import 'package:boxing_timer_app/provider/provider_model.dart';
import 'package:boxing_timer_app/widgets/step_buttom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RoundPicker extends StatelessWidget {
  final int value;
  final int min;
  final int max;
  // final ValueChanged<int> onChanged;

  const RoundPicker
  (
    {
    super.key,
    required this.value,
    required this.min,
    required this.max,
    // required this.onChanged,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StepButton
        (
          icon: Icons.remove,
          onTap: value > min ? context.read<ProviderModel>().decrementRounds : null,
        ),
        const SizedBox(width: 24),
        Text(
          '$value',
          style: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          value == 1 ? 'round' : 'rounds',
          style: TextStyle(color: Colors.grey[500], fontSize: 16),
        ),
        const SizedBox(width: 24),
        StepButton(
          icon: Icons.add,
          onTap: value < max ? context.read<ProviderModel>().incrementRounds : null,
        ),
      ],
    );
  }
}