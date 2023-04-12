import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _name = '';
  static bool _isDarkMode = false;
  static int? _gender = 1;

  static Future init() async{
    _prefs = await SharedPreferences.getInstance();
    _prefs.setInt('gender', 1);
  }

  static int? get gender => _prefs.getInt('gender') ?? _gender;

  static set gender(int? value) {
    _gender = value;
    _prefs.setInt('gender', _gender!);
  }

  static bool get isDarkMode => _prefs.getBool("isDarkMode") ?? _isDarkMode;

  static set isDarkMode(bool value) {
    _isDarkMode = value;
    _prefs.setBool('isDarkMode', _isDarkMode);
  }

  static String get name => _prefs.getString('name') ?? _name ;

  static set name(String value) {
    _name = value;
    _prefs.setString('name', _name);
  }
}