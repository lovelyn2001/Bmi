import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xylophone_app/age_card.dart';
import 'package:xylophone_app/child_widget.dart';
import 'package:xylophone_app/resuable_card.dart';
import 'package:xylophone_app/constants.dart';
import 'package:xylophone_app/weight_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Card color for male gender selection
  Color maleCardColour = inactiveCardColor;
  // Card color for female gender selection
  Color femaleCardColour = inactiveCardColor;
  // Currently selected gender
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with title
      appBar: AppBar(title: Text('BMI CALCULATOR'), centerTitle: true),
      body: Column(
        children: [
          // Gender selection cards
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    selectedGender == Gender.male
                        ? maleCardColour = activeCardColor
                        : inactiveCardColor,
                    child: ChildWidget(FontAwesomeIcons.mars, 'MALE'),
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    child: ChildWidget(FontAwesomeIcons.venus, 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          // Height slider card
          Expanded(
            child: ResuableCard(
              activeCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Height', style: Theme.of(context).textTheme.bodySmall),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$heightValue',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text('cm', style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                  // Slider to select height value
                  Slider(
                    value: currentSliderValue,
                    min: 0,
                    max: 180,
                    onChanged: (value) {
                      setState(() {
                        currentSliderValue = value;
                        heightValue = currentSliderValue.toInt();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          // Weight and Age cards
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    activeCardColor,
                    child: WeightCard('WEIGHT'),
                  ),
                ),
                Expanded(
                  child: ResuableCard(activeCardColor, child: AgeCard('AGE')),
                ),
              ],
            ),
          ),
          // Bottom container for calculate button or info
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
      // Floating action button (currently does nothing)
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
