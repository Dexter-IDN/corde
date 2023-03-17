import 'package:flutter/material.dart';
import 'package:division/division.dart';

import '../style/app_color.dart';

class CustomDsc extends StatelessWidget {
  final String label;
  final String dsc;

  const CustomDsc({this.label = "example", this.dsc = "lorem ipsum"});

  @override
  Widget build(BuildContext context) {
    AppColor appColor = AppColor();

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Txt(label,
              style: TxtStyle()
                ..fontSize(16)
                ..fontWeight(FontWeight.w500)
                ..textColor(appColor.accent2)),
          Txt(
            dsc.toUpperCase(),
            style: TxtStyle()
              ..fontSize(20)
              ..fontWeight(FontWeight.w600)
              ..textColor(appColor.highlight),
          )
        ],
      ),
    );
  }
}
