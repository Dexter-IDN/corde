import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:color_picker_camera/color_picker_camera.dart';

import '../../controller/color_list.dart';

import '../style/app_color.dart';
import '../widgets/custom_button.dart';

class ColorDetection extends StatelessWidget {
  const ColorDetection();

  @override
  Widget build(BuildContext context) {
    AppColor appColor = AppColor();
    final colorlist = Get.put(ColorList());

    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Take Color From",
          style: TextStyle(
              color: appColor.accent2,
              fontSize: 17,
              fontWeight: FontWeight.w400),
        ),
        CustomButton(
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height * 0.075,
          margin: 10,
          icon: Icons.photo_camera_rounded,
          label: "Camera",
          onTap: () async {
            String colorCode = await ColorPickerCamera.captureColorFromCamera;
            colorlist.colorHex.value = colorCode;
            colorlist.colorList.addIf((colorlist.colorHex.value == colorCode),
                colorlist.colorHex.value);
            if (colorlist.colorList.isNotEmpty) {
              print(colorlist.colorList.elementAt(0));
            }
          },
        ),
        CustomButton(
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height * 0.075,
          color: appColor.accent1,
          icon: Icons.image_rounded,
          label: "Galery",
        )
      ]),
    );
  }
}
