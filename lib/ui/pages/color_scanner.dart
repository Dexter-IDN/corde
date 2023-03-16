import 'package:flutter/material.dart';

import '../style/app_color.dart';
import '../widgets/custom_button.dart';

class ColorScanner extends StatelessWidget {
  const ColorScanner({super.key});

  @override
  Widget build(BuildContext context) {
    AppColor appColor = AppColor();

    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Take Color From",
          style: TextStyle(
              color: appColor.accent2,
              fontSize: 19,
              fontWeight: FontWeight.w400),
        ),
        CustomButton(
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height * 0.075,
          margin: 10,
          icon: Icons.photo_camera_rounded,
          label: "Camera",
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
