import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../Models/user.dart';
class HomePage extends StatefulWidget {
  final String? token;
  const HomePage({super.key, this.token});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Map<String, dynamic> data;
  late User user;
  String? name;
  late String? _token;

  @override
  void initState() {
    _token = widget.token ?? Get.arguments as String?;
    data = JwtDecoder.decode(_token!);
    user = User.fromJson(data);
    name = user.name.split(' ')[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    final hscale = screenSize.height / 826.9;
    final wscale = screenSize.width / 392.7;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(5, 10, 26, .8),
        body: Stack(children: [
          Column(
            children: [
              Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/character.png',
                            ),
                            alignment: Alignment.bottomRight,
                            opacity: .8)),
                  )),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 70.0 * hscale, left: 10 * wscale, right: 10 * wscale),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/lawtip.png'),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.settings),
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 30.0 * hscale, left: 30, right: 30),
                    child: Row(
                      children: [
                        Text(
                          'Hello ',
                          style: GoogleFonts.poppins(
                              fontSize: 28 * hscale,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              height: 1 * hscale),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '$name',
                          style: GoogleFonts.poppins(
                              fontSize: 28 * hscale,
                              color: const Color.fromARGB(255, 126, 166, 255),
                              fontWeight: FontWeight.w900,
                              height: 1 * hscale),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30 * wscale),
                    child: Text(
                      'How can I help you today?',
                      style: GoogleFonts.poppins(
                          fontSize: 16 * hscale,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          height: 1.2 * hscale),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 55 * hscale,
                        left: 10 * wscale,
                        right: 10 * wscale),
                    child: SizedBox(
                      height: 360 * hscale,
                      child: ListView(children: [
                        CarouselSlider(
                          items: [
                            Container(
                              width: 380 * wscale,
                              margin: const EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color:
                                      Color.fromRGBO(126, 166, 255, .4),
                                      spreadRadius: 1,
                                      blurRadius: 1),
                                ],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 40 * hscale),
                                  Text(
                                    'Summarize',
                                    style: GoogleFonts.poppins(
                                        fontSize: 33,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        height: 1 * hscale),
                                  ),
                                  Text(
                                    'a document',
                                    style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        height: 1),
                                  ),
                                  SizedBox(
                                    height: 15 * hscale,
                                  ),
                                  Flexible(
                                    child: Text(
                                      'Upload a legal\n document\n and get simplified\n version of it',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          color: const Color.fromRGBO(
                                              126, 166, 255, 1),
                                          fontWeight: FontWeight.w400,
                                          height: 1),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20 * hscale,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 175,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all(
                                                const Color.fromARGB(
                                                    255, 79, 142, 156)),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10)))),
                                        onPressed: null,
                                        child: Text(
                                          'Click here',
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: -0.5),
                                          textAlign: TextAlign.center,
                                        )),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 380 * wscale,
                              margin: const EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color:
                                      Color.fromRGBO(126, 166, 255, .4),
                                      spreadRadius: 1,
                                      blurRadius: 1),
                                ],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 40 * hscale),
                                  Text(
                                    'Know',
                                    style: GoogleFonts.poppins(
                                        fontSize: 33,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        height: 1 * hscale),
                                  ),
                                  Text(
                                    'Your Rights',
                                    style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        height: 1 * hscale
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15 * hscale,
                                  ),
                                  Flexible(
                                    child: Text(
                                      'Know your\n rights as a\n citizen',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          color: const Color.fromRGBO(
                                              126, 166, 255, 1),
                                          fontWeight: FontWeight.w400,
                                          height: 1.2 * hscale),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20 * hscale,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 175,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all(
                                                const Color.fromARGB(
                                                    255, 79, 142, 156)),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10)))),
                                        onPressed: null,
                                        child: Text(
                                          'Click here',
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: -0.5),
                                          textAlign: TextAlign.center,
                                        )),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 380 * wscale,
                              margin: const EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color:
                                      Color.fromRGBO(126, 166, 255, .4),
                                      spreadRadius: 1,
                                      blurRadius: 1),
                                ],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 40 * hscale),
                                  Text(
                                    'Legal',
                                    style: GoogleFonts.poppins(
                                        fontSize: 33,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        height: 1 * hscale),
                                  ),
                                  Text(
                                    'Aid',
                                    style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        height: 1),
                                  ),
                                  SizedBox(
                                    height: 15 * hscale,
                                  ),
                                  Flexible(
                                    child: Text(
                                      'Still confused what\n to do next? Reach\n out to the best\n legal aid providers.',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          color: const Color.fromRGBO(
                                              126, 166, 255, 1),
                                          fontWeight: FontWeight.w400,
                                          height: 1),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20 * hscale,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 175,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all(
                                                const Color.fromARGB(
                                                    255, 79, 142, 156)),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10)))),
                                        onPressed: null,
                                        child: Text(
                                          'Click here',
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: -0.5,
                                              height: 1 * hscale),
                                          textAlign: TextAlign.center,
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ],

                          //Slider Container properties
                          options: CarouselOptions(
                            height: 305 * hscale,
                            enlargeCenterPage: true,
                            enlargeFactor: .3,
                            autoPlay: true,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                            const Duration(milliseconds: 1400),
                            viewportFraction: 0.77,
                          ),
                        )
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 40 * hscale,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30 * wscale),
                    child: SizedBox(
                        width: 335 * wscale,
                        height: 119 * hscale,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 27 * hscale,
                              left: 0,
                              child: Container(
                                  width: 335 * wscale,
                                  height: 64 * hscale,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                    color: Color.fromRGBO(72, 94, 142, 1),
                                  ))),
                          Positioned(
                            top: 35 * hscale,
                            left: 29 * wscale,
                            child: SizedBox(
                              height: 50 * hscale,
                              width: 50 * wscale,
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/home.png', fit: BoxFit.fill,),
                                color: Colors.white,
                                splashRadius: 2,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 15 * hscale,
                              left: 143 * wscale,
                              bottom: 50 * hscale,
                              child: Container(
                                  width: 55 * wscale,
                                  height: 55 * hscale,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(
                                        217, 217, 217, 1),
                                    border: Border.all(
                                        color: const Color.fromRGBO(
                                            72, 94, 142, 1),
                                        width: 9 * wscale,
                                        strokeAlign: BorderSide
                                            .strokeAlignOutside
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.elliptical(50, 50)),
                                  ))),
                          Positioned(
                              top: 75 * hscale,
                              left: 160 * wscale,
                              child: Text(
                                'Mini',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: const Color.fromRGBO(
                                        255, 255, 255, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 12 * hscale,
                                    fontWeight: FontWeight.w800,
                                    height: 1 * hscale),
                              )),
                          Positioned(
                              top: 3 * hscale,
                              left: 134 * wscale,
                              child: SizedBox(
                                height: 80 * hscale,
                                width: 80 * wscale,
                                child: IconButton(
                                  onPressed: () {
                                    Get.toNamed('/assistant_screen');
                                  },
                                  icon: Image.asset('assets/images/bot.png'),
                                ),
                              )),
                          Positioned(
                              top: 35 * hscale,
                              left: 267 * wscale,
                              child: SizedBox(
                                height: 50 * hscale,
                                width: 50 * wscale,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset('assets/images/User.png',
                                    fit: BoxFit.fill,),
                                  color: Colors.white,
                                  splashRadius: 2,
                                ),
                              )),
                        ])),
                  )
                ],
              )
            ],
          ),
        ]));
  }
}