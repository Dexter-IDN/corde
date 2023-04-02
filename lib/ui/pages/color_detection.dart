import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:color_picker_camera/color_picker_camera.dart';

import '../../controller/color_list.dart';

import '../style/app_color.dart';
import '../widgets/custom_button.dart';

class ColorDetection extends StatefulWidget {
  const ColorDetection({Key key}) : super(key: key);

  @override
  State<ColorDetection> createState() => _ColorDetectionState();
}

class _ColorDetectionState extends State<ColorDetection> {
  @override
  void initState() {
    super.initState();

    ColorList colorlist = Get.put(ColorList());
    colorlist.LoadColors().then((color) {
      colorlist.savedColor = RxList.from(color);
    });
  }

  @override
  Widget build(BuildContext context) {
    AppColor appColor = AppColor();
    final colorlist = Get.put(ColorList());

    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Take Color From',
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
            colorlist.SaveColor(colorCode);
          },
        ),
        // CustomButton(
        //   width: MediaQuery.of(context).size.width / 2,
        //   height: MediaQuery.of(context).size.height * 0.075,
        //   color: appColor.accent1,
        //   icon: Icons.image_rounded,
        //   label: "Galery",
        // ),
      ]),
    );
  }
}
