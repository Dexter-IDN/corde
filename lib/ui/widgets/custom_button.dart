import 'package:flutter/material.dart';
import 'package:division/division.dart';
import 'package:get/get_utils/get_utils.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color labelColor;
  final Color color;
  final double width;
  final double height;
  final double border;
  final Color borderColor;
  final double opacity;
  final double margin;
  final Function() onTap;

  const CustomButton(
      {this.icon,
      this.label = "Click ME!",
      this.labelColor = const Color(0xFFFFFFFF),
      this.color = const Color(0xFF7F5AF0),
      this.width = 100,
      this.height = 80,
      this.border = 0,
      this.borderColor = Colors.black,
      this.opacity = 1,
      this.margin = 0,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..background.color(color)
        ..width(width)
        ..height(height)
        ..borderRadius(all: 5)
        ..border(all: border, color: borderColor)
        ..opacity(opacity)
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
              ..textColor(labelColor),
          )
        ]),
      ),
      gesture: Gestures()..onTap(onTap),
    );
  }
}
