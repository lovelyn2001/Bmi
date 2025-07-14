import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xylophone_app/child_widget.dart';
import 'package:xylophone_app/resuable_card.dart';
import 'package:xylophone_app/constants.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColor;
  Color femaleCardColour = inactiveCardColor;
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR'), centerTitle: true),
      body: Column(
        children: [
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
                        '$textValue',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text('cm', style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                  Slider(
                    value: currentSliderValue,
                    min: 0,
                    max: 180,
                    activeColor: bottomContainerColor,
                    inactiveColor: sliderInactiveColor,
                    onChanged: (value) {
                      setState(() {
                        currentSliderValue = value;
                        textValue = currentSliderValue.toInt();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ResuableCard(activeCardColor, child: Column())),
                Expanded(child: ResuableCard(activeCardColor, child: Column())),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
