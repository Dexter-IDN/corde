import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:color_models/color_models.dart';
import 'package:colornames/colornames.dart';

import '../../controller/color_list.dart';

import '../style/app_color.dart';

import '../widgets/custom_button.dart';
import '../widgets/color_card.dart';
import '../widgets/shades_card.dart';
import '../widgets/custom_dsc.dart';

class ColorDetail extends StatelessWidget {
  const ColorDetail();

  @override
  Widget build(BuildContext context) {
    AppColor appColor = AppColor();
    ColorList colorList = Get.put(ColorList());

    String hex = colorList.colorHex.value.substring(4);

    String rgbModel = RgbColor.fromHex("#$hex").toString();
    int rgbLastLenght = rgbModel.lastIndexOf(')');
    String rgb = rgbModel.substring(9, rgbLastLenght);

    String cmykModel = CmykColor.fromHex("#$hex").toString();
    int cmykLastLenght = cmykModel.lastIndexOf(')');
    String cmyk = cmykModel.substring(10, cmykLastLenght);

    String hslModel = HslColor.fromHex("#$hex").toString();
    int hslLastLenght = hslModel.lastIndexOf(')');
    String hsl = hslModel.substring(9, hslLastLenght);

    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              "CORDE",
              style:
                  TextStyle(color: appColor.white, fontWeight: FontWeight.bold),
            ),
          )),
      body: Padding(
        padding: EdgeInsets.only(top: 14, left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
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
            ),
            ColorCard(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              colorHex: colorList.colorHex.value,
              colorName:
                  ColorNames.guess(Color(int.parse(colorList.colorHex.value))),
            ),
            ShadesCard(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.08,
              colorHex: colorList.colorHex.value,
            ),
            Container(
              margin: EdgeInsets.only(top: 24, bottom: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomDsc(
                    label: "HEX",
                    dsc: '#$hex',
                  ),
                  CustomDsc(
                    label: "RGBA",
                    dsc: rgb,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 32),
              child: CustomDsc(
                label: "CMYK",
                dsc: cmyk,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 42),
              child: CustomDsc(
                label: "HSL",
                dsc: hsl,
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
              onTap: () {
                colorList.savedColor.removeAt(colorList.colorIndex.value);
                Get.back();
              },
            )
          ],
        ),
      ),
    );
  }
}
