import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/style/app_color.dart';
import 'ui/pages/color_detection.dart';
import 'ui/pages/saved_color.dart';
import 'ui/pages/color_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    AppColor appColor = AppColor();

    final _selectedIndex = 0.obs;
    const List<Widget> _pageList = [
      ColorDetection(),
      SavedColor(),
    ];

    void _onItemTapped(int index) {
      _selectedIndex.value = index;
    }

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Archivo',
          textTheme: TextTheme()
              .apply(bodyColor: appColor.white, displayColor: appColor.white),
          appBarTheme: AppBarTheme(
              backgroundColor: appColor.primary,
              elevation: 0,
              scrolledUnderElevation: 0),
          scaffoldBackgroundColor: appColor.primary,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: appColor.black,
            selectedItemColor: appColor.highlight,
            unselectedItemColor: appColor.secondary,
          ),
          splashColor: Colors.transparent),
      home: Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text(
            "CORDE",
            style:
                TextStyle(color: appColor.white, fontWeight: FontWeight.bold),
          ),
        )),
        body: Obx(() => _pageList.elementAt(_selectedIndex.value)),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.colorize_rounded), label: 'Picker'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.palette_rounded), label: 'Color')
            ],
            currentIndex: _selectedIndex.value,
            showUnselectedLabels: true,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
