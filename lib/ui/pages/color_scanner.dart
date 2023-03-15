import 'package:flutter/material.dart';
import '../style/app_color.dart';

class ColorScanner extends StatelessWidget {
  const ColorScanner({super.key});

  @override
  Widget build(BuildContext context) {
    AppColor appColor = AppColor();

    return Center(child: Text("Color Scanner Page"));
  }
}
