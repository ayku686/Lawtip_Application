import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lawtip/Utilities/Generics/Routes.dart';
import 'package:lottie/lottie.dart';

class VirtualAssistant extends StatefulWidget {
  const VirtualAssistant({super.key});

  @override
  State<VirtualAssistant> createState() => _VirtualAssistantState();
}

class _VirtualAssistantState extends State<VirtualAssistant> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final hscale = screenSize.height / 826.9;
    final wscale = screenSize.width / 392.7;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(5, 10, 26, .8),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 80.0*hscale, left: 5*wscale),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(5, 10, 26, .8)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, ScreenRoutes.homepageRoute);
                  },
                  child: Image.asset("assets/images/back.png",
                      height: 25 * hscale, width: 30 * wscale)),
              Padding(
                padding: EdgeInsets.only(left: 20.0*wscale, top: 50*hscale),
                child: Stack(
                  children: [
                    SizedBox(
                        height: 300*hscale,
                    width: 400*wscale,
                        child: Lottie.asset('assets/animation/botAnimation.json'),),
                    Positioned(
                        top: 240*hscale,
                        left: 167*wscale,
                        child: Image.asset("assets/images/botBase.png")),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'I am ‘Mini-The bot’. I am here to\n answer all your queries.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 16 * hscale,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          height: 1.2 * hscale),
                    ),
                    SizedBox(
                      height: 220*hscale,
                    ),
                    SizedBox(
                      height: 70*hscale,
                      width: 350*wscale,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 16*hscale,
                          color: Colors.white
                        ),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.mic,
                                color: Colors.white.withOpacity(.7),
                              ), onPressed: () {},
                              splashRadius: 15,
                            ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide(
                                width: 1.1, color: Colors.white.withOpacity(.7))),
                        hintText: 'Feel free to ask me anything...',
                        hintStyle: TextStyle(
                            color: const Color.fromARGB(
                                120, 255, 255, 255).withOpacity(.6),
                            fontSize: 16 * hscale
                        ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide(
                                  width: 1.1*wscale, color: Colors.white.withOpacity(.7))),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 24*wscale,vertical: 20*hscale),
                          ),

                    ),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
