import 'package:shared_preferences/shared_preferences.dart';
class Share {

  void create(String user, String pass,bool) async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.setString("userId", user);
    shr.setString("password", pass);
  }

  Future<Map> read() async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    String? user = shr.getString("userId");
    String? pass = shr.getString("password");
    bool? login = shr.getBool("login");
    Map m1 = {"userId": user, "password": pass};
    return m1;
  }

  void clear() async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.clear();
  }
}
