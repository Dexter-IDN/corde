import 'package:flutter/material.dart';

import '../style/app_color.dart';
import '../widgets/custom_button.dart';

class ColorScanner extends StatelessWidget {
  const ColorScanner({super.key});

  @override
  Widget build(BuildContext context) {
    AppColor appColor = AppColor();

    return Center(child: CustomButton());
  }
}
