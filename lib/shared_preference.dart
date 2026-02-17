import 'package:shared_preferences/shared_preferences.dart';

class SharedPerference {
  static Future<void> storeName(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
  }

  static Future<Map<String, String?>> loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString('name');
    return {
      'name': name,
    };
  }

}
