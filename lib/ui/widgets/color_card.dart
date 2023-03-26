import 'package:flutter/material.dart';
import 'package:division/division.dart';

import '../../model/colorpalette.dart';

class ColorCard extends StatelessWidget {
  final String colorName;
  final String colorHex;
  final double width;
  final double height;

  const ColorCard(
      {this.colorName = "No Name",
      this.colorHex = "0xFFFFFFFF",
      this.width = 100,
      this.height = 100});

  @override
  Widget build(BuildContext context) {
    final colorPalette = ColorPalette("#${colorHex.substring(4)}");
    final textColor = colorPalette.isDarkColor("#${colorHex.substring(4)}")
        ? Colors.white
        : Colors.black;

    return Parent(
        style: ParentStyle()
          ..background.color(Color(int.parse(colorHex)))
          ..borderRadius(all: 5),
        child: Container(
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Txt(
                colorName,
                style: TxtStyle()
                  ..fontSize(15)
                  ..fontWeight(FontWeight.w500)
                  ..textColor(textColor)
                  ..margin(bottom: 5),
              ),
              Txt(
                "#${colorHex.substring(4)}",
                style: TxtStyle()
                  ..fontSize(19)
                  ..fontWeight(FontWeight.w600)
                  ..textColor(textColor),
              ),
            ],
          ),
        ));
  }
}
