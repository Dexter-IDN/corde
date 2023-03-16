import 'package:flutter/material.dart';
import 'package:division/division.dart';

class CustomButton extends StatelessWidget {
  final IconData? icon;
  final String label;
  final Color color;
  final double width;
  final double height;
  final double margin;

  const CustomButton(
      {this.icon,
      this.label = "Click ME!",
      this.color = const Color(0xFF7F5AF0),
      this.width = 100,
      this.height = 80,
      this.margin = 0});

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..background.color(color)
        ..width(width)
        ..height(height)
        ..borderRadius(all: 5)
        ..margin(all: margin),
      child: Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          (icon != null)
              ? Icon(
                  icon,
                  color: Colors.white,
                )
              : Text(''),
          SizedBox(
            width: 8,
          ),
          Txt(
            label,
            style: TxtStyle()
              ..fontSize(18)
              ..fontWeight(FontWeight.w600)
              ..textColor(Colors.white),
          )
        ]),
      ),
    );
  }
}
