// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../style/app_color.dart';

import 'color_detection.dart';
import 'saved_color.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

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

    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text(
          "CORDE",
          style: TextStyle(color: appColor.white, fontWeight: FontWeight.bold),
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
    );
  }
}
