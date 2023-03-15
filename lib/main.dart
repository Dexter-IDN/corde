import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        textTheme: GoogleFonts.archivoTextTheme(),
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
        body: const ColorScanner(),
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
