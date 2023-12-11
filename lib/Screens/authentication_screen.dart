import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final hscale= screenSize.height/826.9;
    final wscale = screenSize.width/392.7;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(5, 10, 26, .8),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 50 * hscale, horizontal: 26 * wscale),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 40*hscale),
                  child: Image.asset("assets/images/chatbot.png",height: 224*hscale,width: 270*wscale),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20*hscale),
                  child: Column(
                    children: [
                      Text(
                        'Solution to all your\n legal needs',
                        style: GoogleFonts.poppins(
                          fontSize: 30*hscale,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10*hscale,
                      ),
                      Text(
                        'Summarize your documents, know your \nrights, get 24*7 online support with our\n virtual assistant “MINI”, get answers to all\n your legal queries, get help from the best\n legal providers.',
                        style: GoogleFonts.poppins(
                          fontSize: 16*hscale,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 40*hscale),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white
                    ),
                    height: 66*hscale,
                    width: 323*wscale,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 66*hscale,
                          width: 162*wscale,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 72, 94, 142)),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))
                              ),
                              onPressed: (){
                                Get.toNamed('/sign_in_screen');
                              },
                              child: Text('Sign In',
                                style: GoogleFonts.poppins(
                                  fontSize: 16*hscale,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -0.5
                                ),
                                textAlign: TextAlign.center,
                              )),
                        ),
                        SizedBox(
                          height: 66*hscale,
                          width: 161*wscale,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(25),
                                          bottomRight: Radius.circular(25)
                                      )
                                  )
                                  )
                              ),
                              onPressed: () {
                                Get.toNamed('/sign_up_screen');
                              },
                              child: Text('Register',
                                style: GoogleFonts.poppins(
                                    fontSize: 16*hscale,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: -0.5
                                ),
                                textAlign: TextAlign.center,
                              )),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
        ),
      ),
      );
  }
}
