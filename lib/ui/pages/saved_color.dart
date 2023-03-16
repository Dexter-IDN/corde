import 'package:flutter/material.dart';

import '../style/app_color.dart';
import '../widgets/color_card.dart';

class SavedColor extends StatelessWidget {
  const SavedColor({super.key});

  @override
  Widget build(BuildContext context) {
    AppColor appColor = AppColor();

    return Padding(
      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Stack(
        children: [
          Text(
            "Saved Color",
            style: TextStyle(
                color: Color(0xFF94A1B2),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          GridView.count(
            padding: EdgeInsets.only(top: 35),
            crossAxisSpacing: 15,
            crossAxisCount: 2,
            children: const [
              ColorCard(
                colorName: "Higlight",
                colorHex: "0xFF7F5AF0",
                bgColor: 0xFF7F5AF0,
              ),
              ColorCard(
                colorName: "Accent Green",
                colorHex: "0xFF2CB67D",
                bgColor: 0xFF2CB67D,
              )
            ],
          )
        ],
      ),
    );
  }
}
