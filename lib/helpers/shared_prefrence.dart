import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences _prefs;
Future<String> getCurrentUser() async {
  _prefs = await SharedPreferences.getInstance();
  return _prefs.getString('token');
}
