import 'package:flutter/material.dart';
import 'package:colornames/colornames.dart';
import 'package:get/get.dart';

import '../../controller/color_list.dart';
import '../style/app_color.dart';
import '../widgets/color_card.dart';

class SavedColor extends StatefulWidget {
  const SavedColor();

  @override
  State<SavedColor> createState() => _SavedColorState();
}

class _SavedColorState extends State<SavedColor> {
  @override
  void initState() {
    super.initState();

    ColorList colorlist = Get.put(ColorList());
    colorlist.LoadColors().then((color) {
      colorlist.savedColor = List.from(color);
    });
  }

  @override
  Widget build(BuildContext context) {
    AppColor appColor = AppColor();
    ColorList colorList = Get.put(ColorList());
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
              (colorList.savedColor.isNotEmpty)
                  ? Obx(
                      () => GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 14,
                          crossAxisSpacing: 14,
                          crossAxisCount: 2,
                          childAspectRatio: 0.8,
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: EdgeInsets.only(top: 15),
                        itemCount: colorList.savedColor.length,
                        itemBuilder: (context, index) {
                          return ColorCard(
                            // colorHex: colors.elementAt(index).toString(),
                            colorName: ColorNames.guess(Color(int.parse(
                                colorList.savedColor.elementAt(index)))),
                            colorHex: colorList.savedColor.elementAt(index),
                          );
                        },
                      ),
                    )
                  : Text("Belum ada warna yang disimpan"),
            ],
          ),
        ),
      ],
    );
  }
}
