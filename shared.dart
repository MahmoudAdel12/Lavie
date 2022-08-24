import 'dart:async' show Future;
// ignore: depend_on_referenced_packages
import 'package:login/login_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtils {
  static Future<SharedPreferences> get _instance async => _prefsInstance ??= await SharedPreferences.getInstance();
  static SharedPreferences? _prefsInstance;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences> init() async {
    _prefsInstance = await _instance;
    return _prefsInstance!;
  }

  static String getString(SharedPreferencesKeys key, [String defValue=""]) {
    return _prefsInstance!.getString(key.name) ?? defValue;
  }

  static Future<bool> setString(SharedPreferencesKeys key, String value) async {
    var prefs = await _instance;
    return prefs.setString(key.name, value) ;
  }

}

enum SharedPreferencesKeys{
  userId,
  userName,
  type,
  message,
  firstName,
  lastName,
  email,
  password,
  facebookEmail,
  googleEmail,
  imageUrl,
  address,
  photo, //Facebook api
  picture, //Google api
  otp,
  userPoints

  //Don't forget to make shared preferences for planets to store all informations about planets


}

class AppConstants {

   static int? userId ;
   static String? email  ;
   static String? password  ;
   static String? fistName ;
   static String? lastName  ;


}
