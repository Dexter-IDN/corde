import 'package:flutter/material.dart';
import 'package:division/division.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  const CustomButton(
      {this.color = const Color(0xFF7F5AF0),
      this.width = 100,
      this.height = 80});

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..background.color(color)
        ..width(width)
        ..height(height),
      child: Container(
        child: Center(child: Text("Click ME!")),
      ),
    );
  }
}
