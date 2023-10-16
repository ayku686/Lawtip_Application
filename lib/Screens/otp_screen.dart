import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                          onPressed: () {},
                          child: Image.asset(
                              "assets/images/back.png", height: 25 * hscale,
                              width: 30 * wscale)
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top:20*hscale,left: 30 * wscale, right: 30 * wscale),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You are almost done',
                        style: GoogleFonts.poppins(
                            fontSize: 31 * hscale,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            height: 1.89 * hscale
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        ' Enter the OTP sent to your registered\n mobile no./email Id',
                        style: GoogleFonts.poppins(
                            fontSize: 17 * hscale,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            height: 1.3 *hscale
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 40.0*hscale),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 60*wscale,
                              height: 60*hscale,
                              child: TextFormField(decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: const BorderSide(
                                        width: 2,
                                        color: Colors.white
                                    )
                                ),
                              )
                              ),
                            ),
                            SizedBox(
                              width: 60*wscale,
                              height: 60*hscale,
                              child: TextFormField(decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: const BorderSide(
                                        width: 2,
                                        color: Colors.white
                                    )
                                ),
                              )
                              ),
                            ),
                            SizedBox(
                              width: 60*wscale,
                              height: 60*wscale,
                              child: TextFormField(decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2,
                                        color: Colors.white
                                    )
                                ),
                              )
                              ),
                            ),
                            SizedBox(
                              width: 60*wscale,
                              height: 60*hscale,
                              child: TextFormField(decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2,
                                        color: Colors.white
                                    )
                                ),
                              )
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 360*hscale),
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
                              onPressed: null,
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
                      )
                    ],

                  ),
                )
              ]),
        ));
  }
}

