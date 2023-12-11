import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lawtip/Utilities/authentication.dart';
import 'package:lawtip/Utilities/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  LoginController controller = Get.put(LoginController());
  late SharedPreferences preferences;

  @override
  void initState() {
    super.initState();
    initSharedPrefs();
  }
  @override
  void dispose() {
    Get.delete<LoginController>();
    super.dispose();
  }

  Future<void> initSharedPrefs() async {
    preferences = await SharedPreferences.getInstance();
    if (mounted) {
      setState(() {});
    }
  }
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final hscale = screenSize.height / 826.9;
    final wscale = screenSize.width / 392.7;
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
          backgroundColor: const Color.fromRGBO(5, 10, 26, .8),
          body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
            padding: EdgeInsets.only(top: 60 * hscale, left: 5 * wscale),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(5, 10, 26, .8)),
                    ),
                    onPressed: () {
                      Get.toNamed('/authentication_screen');
                    },
                    child: Image.asset("assets/images/back.png",
                        height: 25 * hscale, width: 30 * wscale)),
              ],
            ),
                ),
                Padding(
            padding: EdgeInsets.only(
                left: 40 * wscale, right: 40 * wscale, bottom: 10 * hscale),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back',
                  style: GoogleFonts.poppins(
                      fontSize: 35 * hscale,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      height: 1.79 * hscale),
                  textAlign: TextAlign.left,
                ),
                Text(
                  ' Believe us\n We missed you a lot!',
                  style: GoogleFonts.poppins(
                      fontSize: 18 * hscale,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      height: 1.2 * hscale),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 70.0 * hscale, bottom: 15 * hscale),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign In using',
                        style: GoogleFonts.poppins(
                          fontSize: 16 * hscale,
                          color: const Color.fromARGB(140, 255, 255, 255),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                        ),
                        onPressed: () {},
                        child: Image.asset("assets/images/google.png",
                            height: 45 * hscale, width: 45 * wscale)),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                        ),
                        onPressed: () {},
                        child: Image.asset("assets/images/facebook.png",
                            height: 45 * hscale, width: 45 * wscale)),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                        ),
                        onPressed: () {},
                        child: Image.asset("assets/images/instagram.png",
                            height: 45 * hscale, width: 45 * wscale)),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 30.0 * hscale, bottom: 25 * hscale),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'OR',
                        style: GoogleFonts.poppins(
                          fontSize: 16 * hscale,
                          color: const Color.fromARGB(140, 255, 255, 255),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 1, color: Colors.white.withOpacity(.449))),
                  child: Container(
                    height: 70 * hscale,
                    alignment: Alignment.center,
                    child: TextField(
                      controller: controller.emailphoneController.value,
                      focusNode: controller.emailphoneNode.value,
                      onSubmitted: (_)=>Utils.focusChange(context, controller.passwordNode.value),
                      enableSuggestions: true,
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 24 * wscale),
                          hintStyle: TextStyle(
                            color: const Color.fromARGB(120, 255, 255, 255)
                                .withOpacity(.6),
                            fontSize: 16 * hscale,
                          ),
                          hintText: "Email, Phone or Username"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20 * hscale),
                  child: Card(
                    color: Colors.transparent,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            width: 1, color: Colors.white.withOpacity(.449))),
                    child: Container(
                      height: 70 * hscale,
                      alignment: Alignment.center,
                      child: TextField(
                        controller: controller.passwordController.value,
                        focusNode: controller.passwordNode.value,
                        enableSuggestions: false,
                        keyboardType: TextInputType.text,
                        autocorrect: false,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15 * hscale,
                                horizontal: 24 * wscale),
                            hintStyle: TextStyle(
                              color: const Color.fromARGB(120, 255, 255, 255)
                                  .withOpacity(.6),
                              fontSize: 16 * hscale,
                            ),
                            hintText: 'Password',
                            suffixIcon: IconButton(
                                onPressed: () {},
                                iconSize: 18,
                                splashRadius: 18,
                                icon: Icon(
                                  Icons.visibility_off,
                                  color:
                                      const Color.fromARGB(120, 255, 255, 255)
                                          .withOpacity(.6),
                                ))),
                        obscureText: true,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60 * hscale),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: GoogleFonts.poppins(
                          fontSize: 15 * hscale,
                          color: const Color.fromARGB(140, 255, 255, 255),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/sign_up_screen');
                          },
                          child: Text(
                            'Register',
                            style: GoogleFonts.poppins(
                              fontSize: 15 * hscale,
                              color: const Color.fromARGB(255, 72, 94, 142),
                              fontWeight: FontWeight.bold,
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromARGB(255, 72, 94, 142)),
                  height: 66 * hscale,
                  width: 323 * wscale,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 72, 94, 142)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)))),
                      onPressed: (){
                        controller.isLoading == true.obs ? const CircularProgressIndicator():
                        controller.login().then((value){
                          preferences.setString('token', value);
                          Get.toNamed('/home_screen',arguments: value);
                        });
                      },
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.poppins(
                            fontSize: 16 * hscale,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.5),
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            ),
                )
              ]),
          )),
    );
  }
}
