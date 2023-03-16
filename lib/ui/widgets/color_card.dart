import 'package:flutter/material.dart';
import 'package:division/division.dart';

class ColorCard extends StatelessWidget {
  final String? colorName;
  final String? colorHex;
  final int bgColor;

  const ColorCard({this.colorName, this.colorHex, this.bgColor = 0xFFFFFFFF});

  @override
  Widget build(BuildContext context) {
    return Parent(
        style: ParentStyle()
          ..background.color(Color(bgColor))
          ..borderRadius(all: 5),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Txt(
                colorName!,
                style: TxtStyle()
                  ..fontSize(14)
                  ..margin(bottom: 5),
              ),
              Txt(
                colorHex!,
                style: TxtStyle()
                  ..fontSize(18)
                  ..fontWeight(FontWeight.w300),
              ),
            ],
          ),
        ));
  }
}
