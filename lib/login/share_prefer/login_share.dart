import 'package:shared_preferences/shared_preferences.dart';

class LoginShare
{

  Future<void> createuser({required String iname,required String iemail,required String ipass, bool? ilogin})
  async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("iname", iname);
    pref.setString("iemail", iemail);
    pref.setString("ipass", ipass);
    pref.setBool("ilogin", ilogin!);
  }

  Future<Map<dynamic, dynamic>> readuser()
  async {
    SharedPreferences pre = await SharedPreferences.getInstance();
    String? rname = pre.getString("iname");
    String? remail = pre.getString("iemail");
    String? rpass = pre.getString("ipass");
    bool? rlogin = pre.getBool('ilogin');
    return {'fname':rname,'fmail':remail,'fpass':rpass,'flogin':rlogin};
  }

}