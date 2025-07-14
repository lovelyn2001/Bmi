import 'package:flutter/material.dart';
import 'package:xylophone_app/constants.dart';

class ChildWidget extends StatelessWidget {
  const ChildWidget(this.icon, this.text, {super.key});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: iconSize),
        SizedBox(height: sizedBoxHeight),
        Text(text, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
