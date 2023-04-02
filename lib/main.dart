import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/style/app_color.dart';

import 'ui/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColor appColor = AppColor();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Archivo',
          textTheme: const TextTheme()
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
      home: const Home(),
    );
  }
}
