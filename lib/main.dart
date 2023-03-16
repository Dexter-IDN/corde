import 'package:corde/ui/pages/saved_color.dart';
import 'package:flutter/material.dart';

import 'ui/style/app_color.dart';
import 'ui/pages/color_scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppColor appColor = AppColor();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Archivo',
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
      ),
      home: Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text(
            "CORDE",
            style:
                TextStyle(color: appColor.white, fontWeight: FontWeight.bold),
          ),
        )),
        body: const SavedColor(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.colorize_rounded), label: 'Picker'),
            BottomNavigationBarItem(
                icon: Icon(Icons.image_rounded), label: 'Color')
          ],
        ),
      ),
    );
  }
}
