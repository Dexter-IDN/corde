import 'package:flutter/material.dart';

import '../style/app_color.dart';
import '../widgets/color_card.dart';

class SavedColor extends StatelessWidget {
  const SavedColor({super.key});

  @override
  Widget build(BuildContext context) {
    AppColor appColor = AppColor();

    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Saved Color",
                style: TextStyle(
                    color: Color(0xFF94A1B2),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 15),
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                children: const [
                  ColorCard(
                    colorName: "Higlight",
                    colorHex: "0xFF7F5AF0",
                  ),
                  ColorCard(
                    colorName: "Accent Green",
                    colorHex: "0xFF2CB67D",
                  ),
                  ColorCard(
                    colorName: "Accent Green",
                    colorHex: "0xFF2CB67D",
                  ),
                  ColorCard(
                    colorName: "Higlight",
                    colorHex: "0xFF7F5AF0",
                  ),
                  ColorCard(
                    colorName: "Higlight",
                    colorHex: "0xFF7F5AF0",
                  ),
                  ColorCard(
                    colorName: "Accent Green",
                    colorHex: "0xFF2CB67D",
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
