import 'package:flutter/material.dart';

import '../style/app_color.dart';
import '../widgets/color_card.dart';
import '../widgets/shades_card.dart';

class ColorDetail extends StatelessWidget {
  const ColorDetail({super.key});

  @override
  Widget build(BuildContext context) {
    AppColor appColor = AppColor();

    return Padding(
      padding: EdgeInsets.only(top: 8, left: 16, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_rounded,
                  color: appColor.accent2,
                  size: 24,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Back",
                  style: TextStyle(color: appColor.accent2, fontSize: 18),
                )
              ],
            ),
          ),
          ColorCard(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          ShadesCard(
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
