import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lawtip/Utilities/Generics/Routes.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    final hscale = screenSize.height / 826.9;
    final wscale = screenSize.width / 392.7;
    return Scaffold(
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
                            Navigator.pushNamed(context, ScreenRoutes.authenticationRoute);
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
                            height: 1.89 * hscale
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

                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Card(
                          color: Colors.transparent,
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 1, color: Colors.white.withOpacity(.449))),
                          child: Container(
                            height: 60 * hscale,
                            alignment: Alignment.center,
                            child: TextField(
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
                                  hintText: "Full Name"),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 30*hscale),
                          child: Card(
                            color: Colors.transparent,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 1, color: Colors.white.withOpacity(.449))),
                            child: Container(
                              height: 60 * hscale,
                              alignment: Alignment.center,
                              child: TextField(
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
                                    hintText: "Email or Phone"),
                              ),
                            ),
                          ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 30*hscale),
                          child: Card(
                            color: Colors.transparent,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 1, color: Colors.white.withOpacity(.449))),
                            child: Container(
                              height: 60 * hscale,
                              alignment: Alignment.center,
                              child: TextField(
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
                          padding: EdgeInsets.only(top: 30*hscale),
                          child:Card(
                            color: Colors.transparent,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 1, color: Colors.white.withOpacity(.449))),
                            child: Container(
                              height: 60 * hscale,
                              alignment: Alignment.center,
                              child: TextField(
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
                                    hintText: 'Confirm Password',
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
                                  Navigator.pushNamed(context, ScreenRoutes.signInRoute);
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
                            onPressed: null,
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
        ));
  }
}

