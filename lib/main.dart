import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:lawtip/res/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/home_page.dart';
import 'Screens/sign_in_screen.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  getToken().then((value) =>
      runApp(MyApp(token: value)));
 }
 Future<String?> getToken() async{
   SharedPreferences preferences = await SharedPreferences.getInstance();
   return Future.value(preferences.getString('token'));
 }
class MyApp extends StatelessWidget {
  final String? token;
  const MyApp({
    this.token,
    Key? key,}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      color: const Color.fromRGBO(5, 10, 26, .8),
      home:
      // const SignUp(),
      token == null || JwtDecoder.isExpired(token!) ? const SignIn() : HomePage(token: token,),
      getPages: AppRoutes.appRoutes()
    );
  }
}
