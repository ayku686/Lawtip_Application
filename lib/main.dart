import 'package:flutter/material.dart';
import 'package:lawtip/Screens/authentication_screen.dart';
import 'package:lawtip/Screens/home_page.dart';
import 'package:lawtip/Screens/otp_screen.dart';
import 'package:lawtip/Screens/sign_in_screen.dart';
import 'package:lawtip/Screens/sign_up_screen.dart';
import 'package:lawtip/Screens/virtual_assistant.dart';
import 'package:lawtip/Utilities/Generics/Routes.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: const Color.fromRGBO(5, 10, 26, .8),
      home: const SignUp(),
      routes: {
        ScreenRoutes.authenticationRoute: (context) => const AuthenticationScreen(),
        ScreenRoutes.signInRoute: (context) => const SignIn(),
        ScreenRoutes.signUpRoute: (context) => const SignUp(),
        ScreenRoutes.homepageRoute: (context) => const HomePage(),
        ScreenRoutes.otpRoute: (context) => const OtpScreen(),
        ScreenRoutes.assistantRoute: (context) => const VirtualAssistant()
      },
    );
  }
}
