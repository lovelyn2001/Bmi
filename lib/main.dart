import 'package:flutter/material.dart';
import 'package:xylophone_app/input_page.dart';

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
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 50.0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
