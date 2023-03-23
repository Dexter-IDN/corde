import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ColorList {
  final colorHex = ''.obs;
  RxList savedColor = <String>[].obs;

  void SaveColor(String color) async {
    savedColor.add(color);

    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setStringList('colors', savedColor());
  }

  Future<List<String>> LoadColors() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    return pref.getStringList('colors');
  }
}
