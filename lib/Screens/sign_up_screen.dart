import 'dart:developer';

import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lawtip/Utilities/text_box.dart';
import '../Utilities/authentication.dart';
import 'otp_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  RegisterController controller = Get.put(RegisterController());

  EmailOTP myAuth = EmailOTP();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    Get.delete<RegisterController>();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    final hscale = screenSize.height / 826.9;
    final wscale = screenSize.width / 392.7;
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold(
          backgroundColor: const Color.fromRGBO(5, 10, 26, .8),
          body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 60 * hscale, left: 5*wscale),
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
                            child: Image.asset(
                                "assets/images/back.png", height: 25 * hscale,
                                width: 30 * wscale)
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top:10*hscale,left: 30 * wscale, right: 30 * wscale),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good to see you here',
                          style: GoogleFonts.poppins(
                              fontSize: 31 * hscale,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              height: 1.89,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          ' Let us show you the magic of AI',
                          style: GoogleFonts.poppins(
                              fontSize: 17 * hscale,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              height: 1.2 *hscale
                          ),
                          textAlign: TextAlign.left,
                        ),

                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40.0),
                                child: textBox(context,hscale, wscale, controller.nameController.value, controller.fullNameRequired, 'Full Name',controller.nameNode.value,controller.emailphoneNode.value),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30*hscale),
                                child: textBox(context,hscale, wscale, controller.emailphoneController.value,controller.emailPhoneRequired, 'Email or Phone',controller.emailphoneNode.value,controller.passwordNode.value),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30*hscale),
                                child: textBox(context,hscale, wscale, controller.passwordController.value, controller.passwordRequired, 'Password',controller.passwordNode.value,controller.confirmPasswordNode.value),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30*hscale),
                                child:textBox(context,hscale, wscale, controller.confirmPasswordController.value, controller.confirmPasswordRequired, 'Confirm Password',controller.confirmPasswordNode.value,null),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 70*hscale),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an account?',
                                style: GoogleFonts.poppins(
                                  fontSize: 15 * hscale,
                                  color: const Color.fromARGB(140, 255, 255, 255),
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              TextButton(
                                  onPressed: (){
                                    Get.toNamed('/sign_in_screen');
                                  },
                                  child: Text('Sign In',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15 * hscale,
                                      color: const Color.fromARGB(255, 72, 94, 142),
                                      fontWeight: FontWeight.bold,
                                    ),))
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color.fromARGB(255, 72, 94, 142)
                          ),
                          height: 66 * hscale,
                          width: 323 * wscale,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 79, 142, 156)),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))
                              ),
                              onPressed: controller.passwordController.value.text == controller.confirmPasswordController.value.text ?() async{
                                if(_formKey.currentState!.validate()){
                                myAuth.setConfig(
                                    appEmail: "me@rohitchouhan.com",
                                    appName: "Email OTP",
                                    userEmail: controller.emailphoneController.value.text,
                                    otpLength: 4,
                                    otpType: OTPType.digitsOnly
                                );
                                log(myAuth.toString());
                                bool otpSent = await myAuth.sendOTP();
                                log(otpSent.toString());

                                if(otpSent){
                                  Get.bottomSheet(
                                    OtpScreen(myAuth: myAuth),
                                    ignoreSafeArea: true,
                                  );
                                }
                               else{
                                 Get.snackbar('Error', 'OTP couldn\'t be sent, Please fill all fields or try again later',
                                     snackPosition: SnackPosition.BOTTOM,
                                     colorText: Colors.white
                                 );
                                }
                              }
                              else{
                                  Get.snackbar('Error','Kindly fill all the fields',
                                  snackPosition: SnackPosition.BOTTOM,
                                  colorText: Colors.white
                                  );
                              }}:(){
                                Get.snackbar('Error', 'Password doesn\'t match. Check your password and try again');
                              },
                              child: Text('Register',
                                style: GoogleFonts.poppins(
                                    fontSize: 16*hscale,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: -0.5
                                ),
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

