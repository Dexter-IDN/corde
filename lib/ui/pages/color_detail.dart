import 'package:flutter/material.dart';

import '../style/app_color.dart';
import '../widgets/custom_button.dart';
import '../widgets/color_card.dart';
import '../widgets/shades_card.dart';
import '../widgets/custom_dsc.dart';

class ColorDetail extends StatelessWidget {
  const ColorDetail({super.key});

  @override
  Widget build(BuildContext context) {
    AppColor appColor = AppColor();

    return Padding(
      padding: EdgeInsets.only(top: 8, left: 16, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Container(
            margin: EdgeInsets.only(top: 24, bottom: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomDsc(
                  label: "HEX",
                ),
                CustomDsc(
                  label: "RGB",
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 32),
            child: CustomDsc(
              label: "CMYK",
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 100),
            child: CustomDsc(
              label: "HSL",
            ),
          ),
          CustomButton(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.06,
            color: Color.fromARGB(50, 214, 76, 61),
            border: 1,
            borderColor: Color(0xFFD64C3D),
            label: "Delete Saved Color",
            labelColor: Color(0xFFD64C3D),
          )
        ],
      ),
    );
  }
}
