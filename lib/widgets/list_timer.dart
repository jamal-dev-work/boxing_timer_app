import 'package:boxing_timer_app/provider/provider_model.dart';
import 'package:boxing_timer_app/widgets/round_picker.dart';
import 'package:boxing_timer_app/widgets/section_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
              )
      ],
    );
  }
}