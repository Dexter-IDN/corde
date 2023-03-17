import 'package:flutter/material.dart';
import 'package:division/division.dart';

class ShadesCard extends StatelessWidget {
  final double width;
  final double height;
  final String colorHex;

  const ShadesCard(
      {this.width = 100, this.height = 60, this.colorHex = "0xFFFFFFFF"});

  @override
  Widget build(BuildContext context) {
    return Parent(
        style: ParentStyle()
          ..width(width)
          ..height(height)
          ..margin(top: 10),
        child: Container(
          child: GridView.count(
            crossAxisCount: 6,
            crossAxisSpacing: 0.1,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(int.parse(colorHex)),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5))),
              ),
              Container(
                color: Color(int.parse(colorHex)),
              ),
              Container(
                color: Color(int.parse(colorHex)),
              ),
              Container(
                color: Color(int.parse(colorHex)),
              ),
              Container(
                color: Color(int.parse(colorHex)),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Color(int.parse(colorHex)),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5)))),
            ],
          ),
        ));
  }
}
