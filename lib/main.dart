import 'package:flutter/material.dart';
import 'package:xylophone_app/screens/input_page.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: InputPage());
  }
}
