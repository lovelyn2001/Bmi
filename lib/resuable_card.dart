import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  const ResuableCard(this.color, {this.child, super.key, this.onPress});

  final Color color;
  final Widget? child;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        child: child,
      ),
    );
  }
}
