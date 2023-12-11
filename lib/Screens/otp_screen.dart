import 'dart:developer';

import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lawtip/Utilities/authentication.dart';

import '../Utilities/utils.dart';

class OtpScreen extends StatefulWidget {
  final EmailOTP? myAuth;
  const OtpScreen({required this.myAuth,super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  OtpController controller = Get.put(OtpController());
  late EmailOTP myAuth;
  @override
  void initState() {
    myAuth = widget.myAuth!;
    super.initState();
  }
  @override
  void dispose() {
    Get.delete<OtpController>();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    final hscale = screenSize.height / 826.9;
    final wscale = screenSize.width / 392.7;
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor:  Colors.black,
        body: SingleChildScrollView(
          child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top:40*hscale,left: 30 * wscale, right: 30 * wscale),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'You are almost done',
                        style: GoogleFonts.poppins(
                            fontSize: 31 * hscale,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            height: 1.89 * hscale
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        ' Enter the OTP sent to your registered\n mobile no./email Id',
                        style: GoogleFonts.poppins(
                            fontSize: 17 * hscale,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            height: 1.3 *hscale
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 40.0*hscale),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Card(
                              color: Colors.transparent,
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      width: 2, color: Colors.white)),
                              child: SizedBox(
                                width: 60*wscale,
                                height: 60*hscale,
                                child: TextFormField(
                                  controller: controller.box1.value,
                                  cursorHeight: 30*hscale,
                                    maxLength: 1,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26*hscale,
                                    ),
                                    focusNode: controller.boxNode1.value,
                                    onFieldSubmitted: (_) => Utils.focusChange(context,controller.boxNode2.value),
                                    decoration: InputDecoration(
                                      focusedBorder: InputBorder.none,
                                      contentPadding:
                                      EdgeInsets.symmetric(vertical:0 * hscale,horizontal: 0 * wscale),
                                    )
                                ),
                              ),
                            ),
                            Card(
                              color: Colors.transparent,
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      width: 2, color: Colors.white)),
                              child: SizedBox(
                                width: 60*wscale,
                                height: 60*hscale,
                                child: TextFormField(
                                    controller: controller.box2.value,
                                    focusNode: controller.boxNode2.value,
                                    onFieldSubmitted: (_) => Utils.focusChange(context, controller.boxNode3.value),
                                    cursorHeight: 30*hscale,
                                    maxLength: 1,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26*hscale,
                                  ),
                                    decoration: InputDecoration(
                                      focusedBorder: InputBorder.none,
                                      contentPadding:
                                      EdgeInsets.symmetric(vertical:0 * hscale,horizontal: 0 * wscale),
                                )
                                ),
                              ),
                            ),
                            Card(
                              color: Colors.transparent,
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      width: 2, color: Colors.white)),
                              child: SizedBox(
                                width: 60*wscale,
                                height: 60*hscale,
                                child: TextFormField(
                                    controller: controller.box3.value,
                                    cursorHeight: 30*hscale,
                                    focusNode: controller.boxNode3.value,
                                    onFieldSubmitted: (_) => Utils.focusChange(context,controller.boxNode4.value),
                                    keyboardType: TextInputType.number,
                                    maxLength: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26*hscale,
                                    ),
                                    decoration: InputDecoration(
                                      focusedBorder: InputBorder.none,
                                      contentPadding:
                                      EdgeInsets.symmetric(vertical:0 * hscale,horizontal: 0 * wscale),
                                    )
                                ),
                              ),
                            ),
                            Card(
                              color: Colors.transparent,
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      width: 2, color: Colors.white)),
                              child: SizedBox(
                                width: 60*wscale,
                                height: 60*hscale,
                                child: TextFormField(
                                    controller: controller.box4.value,
                                    cursorHeight: 30*hscale,
                                    focusNode: controller.boxNode4.value,
                                    keyboardType: TextInputType.number,
                                    maxLength: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26*hscale,
                                    ),
                                    decoration: InputDecoration(
                                      focusedBorder: InputBorder.none,
                                      contentPadding:
                                      EdgeInsets.symmetric(vertical:0 * hscale,horizontal: 0 * wscale),
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50*hscale),
                        child: Container(
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
                              onPressed: ()async{
                                String inputOTP = controller.box1.value.text + controller.box2.value.text + controller.box3.value.text + controller.box4.value.text; // OTP entered by the client after receiving the email
                                bool verified = await myAuth.verifyOTP(
                                    otp: inputOTP
                                );
                                if(verified){
                                  log('Verified');
                                  Get.offAllNamed('/sign_in_screen');
                                }
                                else{
                                  log('Nopez');
                                }
                              },
                              child: Text('Proceed',
                                style: GoogleFonts.poppins(
                                    fontSize: 16*hscale,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: -0.5
                                ),
                                textAlign: TextAlign.center,
                              )),
                        ),
                      ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Didn\'t receive an OTP?',
                          style: GoogleFonts.poppins(
                            fontSize: 15 * hscale,
                            color: const Color.fromARGB(140, 255, 255, 255),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        TextButton(
                            onPressed: (){
                            },
                            child: Text('Resend',
                              style: GoogleFonts.poppins(
                                fontSize: 15 * hscale,
                                color: const Color.fromARGB(255, 72, 94, 142),
                                fontWeight: FontWeight.bold,
                              ),))
                      ],
                      ),
                    ],

                  ),
                )
              ]),
        ));
  }
}

