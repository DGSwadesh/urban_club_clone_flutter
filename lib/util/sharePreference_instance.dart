import 'package:shared_preferences/shared_preferences.dart';

class SharePreferenceInstance {
  static SharedPreferences? prefs;

  static final SharePreferenceInstance networkcall =
      new SharePreferenceInstance._internal();

  SharePreferenceInstance._internal();

  factory SharePreferenceInstance() {
    return networkcall;
  }

  //shared pref initialize
  init() async {
    SharedPreferences.getInstance()
        .then((value) => prefs = value)
        .catchError((e) {
      print("Got error: ${e.error}"); // Finally, callback fires.
      // Future completes with 42.
    });
  }

  void clear() {
    prefs?.clear();
  }

 
  //keys
  final ISLOGIN = 'isLogin';
  final USER_TOKEN = 'user_token';
  final User_ROLE = 'user_role';
  final PROFILE_PHOTO_PATH = 'profile_photo_path';

  //isLogin
  void setIsLogin(value) => prefs?.setBool(ISLOGIN, value);
  bool? isLogin() => prefs?.getBool(ISLOGIN);

  //token
  void setToken(token) => prefs?.setString(USER_TOKEN, token);
  String? getToken() => prefs?.getString(USER_TOKEN);

  //check_User_Role
  void setRole(role) => prefs?.setString(User_ROLE, role);
  String? getRole() => prefs?.getString(User_ROLE);

  //profilePhoto
  // void setprofilePath(value) => prefs.setString(PROFILE_PHOTO_PATH, value);
  // String getProfilePath() => prefs.getString(PROFILE_PHOTO_PATH);

  void saveUserDetails(jsonResponce) {
    setToken(jsonResponce['data']['api_token']);
    setRole(jsonResponce['data']['role']);
    // var token = getToken();
    // print('token:= $token');
    setIsLogin(true);
  }
}

SharePreferenceInstance sharePrefereceInstance = SharePreferenceInstance();
