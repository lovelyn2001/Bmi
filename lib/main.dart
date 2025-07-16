// Entry point for the BMI Calculator app
// Main application widget
// Build the MaterialApp with custom dark theme and home page
// Custom text styles for the app
// Custom slider theme for height selection
// Set InputPage as the home screen
import 'package:flutter/material.dart';
import 'package:xylophone_app/screens/input_page.dart';
import 'package:xylophone_app/constants.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        colorScheme: ColorScheme.dark().copyWith(surface: Color(0xFF0A0E21)),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodySmall: TextStyle(color: Color(0XFF8D8E98), fontSize: 18.0),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
          headlineLarge: TextStyle(
            color: Colors.green,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: TextStyle(
            color: Colors.white,
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 50.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        sliderTheme: SliderTheme.of(context).copyWith(
          thumbColor: bottomContainerColor,
          overlayColor: bottomContainerColor.withAlpha(
            32,
          ), // optional for effect
          activeTrackColor: sliderActiveColor,
          inactiveTrackColor: sliderInactiveColor,
          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
          overlayShape: const RoundSliderOverlayShape(overlayRadius: 24.0),
        ),
      ),
      home: InputPage(),
    );
  }
}
