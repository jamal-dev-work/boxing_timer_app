import 'package:boxing_timer_app/screens/timer_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:boxing_timer_app/provider/provider_model.dart';
import 'package:boxing_timer_app/widgets/round_picker.dart';
import 'package:boxing_timer_app/widgets/section_card.dart';
import 'package:boxing_timer_app/widgets/time_picker.dart';

class ListTimer extends StatelessWidget {
  const ListTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column
    (
      children: 
      [
        SectionCard
        (
          title: 'NUMBER OF ROUNDS',
          icon: Icons.repeat,
          color: Colors.white,
          child: RoundPicker
          (
            value: context.watch<ProviderModel>().rounds,
            min: 1, 
            max: 20, 
          )
        ),
        SizedBox(height: 24),
        SectionCard
        (
          title: 'ROUND TIME', 
          icon: Icons.sports_mma, 
          color: const Color(0xFFE53935), 
          child: TimePicker
          (
            minutes: context.watch<ProviderModel>().roundMinutes, 
            seconds: context.watch<ProviderModel>().roundSeconds, 
            color: const Color(0xFFE53935),
            incrementRoundMinutes: context.read<ProviderModel>().incrementRoundMinutes,
            decrementRoundMinutes: context.read<ProviderModel>().decrementRoundMinutes,
            incrementRoundSeconds: context.read<ProviderModel>().incrementRoundSeconds,
            decrementRoundSeconds: context.read<ProviderModel>().decrementRoundSeconds,
          )
        ),
        SizedBox(height: 24),
        SectionCard
        (
          title: 'REST TIME', 
          icon: Icons.self_improvement, 
          color: const Color(0xFF00ACC1), 
          child: TimePicker
          (
            minutes: context.watch<ProviderModel>().restMinutes, 
            seconds: context.watch<ProviderModel>().restSeconds, 
            color: const Color(0xFF00ACC1),
            incrementRoundMinutes: context.read<ProviderModel>().incrementRestMinutes,
            decrementRoundMinutes: context.read<ProviderModel>().decrementRestMinutes,
            incrementRoundSeconds: context.read<ProviderModel>().incrementRestSeconds,
            decrementRoundSeconds: context.read<ProviderModel>().decrementRestSeconds,
          )
        ),

                      const SizedBox(height: 32),

              // Start Button
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TimerScreen())),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE53935),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 8,
                    shadowColor: const Color(0xFFE53935).withValues(alpha: .5),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.play_arrow_rounded, size: 28),
                      SizedBox(width: 8),
                      Text(
                        'START TRAINING',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
  }
      
    
  }

//       ],
//     );
//   }
// }