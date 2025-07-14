// This widget displays and manages the age selection card for the BMI calculator.
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class AgeCard extends StatefulWidget {
  const AgeCard(this.text, {super.key});
  final String text;

  @override
  State<AgeCard> createState() => _AgeCardState();
}

class _AgeCardState extends State<AgeCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.text, style: Theme.of(context).textTheme.bodySmall),
        Text('$ageValue', style: Theme.of(context).textTheme.bodyLarge),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              backgroundColor: Color(0XFF4C4F5E),
              foregroundColor: Colors.white,
              onPressed: () {
                setState(() {
                  ageValue--;
                });
              },
              child: Icon(FontAwesomeIcons.minus),
            ),
            SizedBox(width: sizedBoxHeight),
            FloatingActionButton(
              backgroundColor: Color(0XFF4C4F5E),
              foregroundColor: Colors.white,
              onPressed: () {
                setState(() {
                  ageValue++;
                });
              },
              child: Icon(FontAwesomeIcons.plus),
            ),
          ],
        ),
      ],
    );
  }
}
