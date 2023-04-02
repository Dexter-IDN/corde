// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:division/division.dart';

import '../../model/colorpalette.dart';

class ShadesCard extends StatelessWidget {
  final double width;
  final double height;
  final String colorHex;

  const ShadesCard(
      {this.width = 100, this.height = 60, this.colorHex = "0xFFFFFFFF"});

  @override
  Widget build(BuildContext context) {
    final colorPalette = ColorPalette("#${colorHex.substring(4)}");
    final shades = colorPalette.generateDarkShades();

    return Parent(
        style: ParentStyle()
          ..width(width)
          ..height(height)
          ..margin(top: 10),
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: GridView.count(
            crossAxisCount: 6,
            crossAxisSpacing: 0.1,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(int.parse(shades[0])),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5))),
              ),
              Container(
                color: Color(int.parse(shades[1])),
              ),
              Container(
                color: Color(int.parse(shades[2])),
              ),
              Container(
                color: Color(int.parse(shades[3])),
              ),
              Container(color: Color(int.parse(shades[4]))),
              Container(
                  decoration: BoxDecoration(
                      color: Color(int.parse(shades[5])),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5)))),
            ],
          ),
        ));
  }
}
