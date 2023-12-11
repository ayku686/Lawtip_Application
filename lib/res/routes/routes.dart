import 'package:get/get.dart';
import 'package:lawtip/Screens/authentication_screen.dart';
import 'package:lawtip/res/routes/route_name.dart';

import '../../Screens/home_page.dart';
import '../../Screens/sign_in_screen.dart';
import '../../Screens/sign_up_screen.dart';
import '../../Screens/virtual_assistant.dart';

class AppRoutes{
  static appRoutes() => [
    GetPage(name: RouteName.assistantScreen, page: () => const AuthenticationScreen()),
    GetPage(name: RouteName.signUpScreen, page: () => const SignUp()),
    GetPage(name: RouteName.signInScreen, page: () => const SignIn()),
    GetPage(name: RouteName.homeScreen, page: () => const HomePage()),
    GetPage(name: RouteName.assistantScreen, page: () => const VirtualAssistant()),
  ];
}