// This widget displays and manages the weight selection card for the BMI calculator.
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xylophone_app/constants.dart';

class WeightCard extends StatefulWidget {
  const WeightCard(this.text, {super.key});

  final String text;

  @override
  State<WeightCard> createState() => _WeightCardState();
}

class _WeightCardState extends State<WeightCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.text, style: Theme.of(context).textTheme.bodySmall),
        Text('$weightValue', style: Theme.of(context).textTheme.bodyLarge),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              backgroundColor: const Color(0XFF4C4F5E),
              foregroundColor: Colors.white,
              onPressed: () {
                setState(() {
                  weightValue--;
                });
              },
              child: const Icon(FontAwesomeIcons.minus),
            ),
            const SizedBox(width: sizedBoxHeight),
            FloatingActionButton(
              backgroundColor: const Color(0XFF4C4F5E),
              foregroundColor: Colors.white,
              onPressed: () {
                setState(() {
                  weightValue++;
                });
              },
              child: const Icon(FontAwesomeIcons.plus),
            ),
          ],
        ),
      ],
    );
  }
}
