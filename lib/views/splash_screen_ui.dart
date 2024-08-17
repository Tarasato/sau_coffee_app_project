// ignore_for_file: prefer_const_constructors, camel_case_types, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sau_coffee_app_project/views/introduction_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _splashScreenUIState();
}

class _splashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    // หน่วงเวลา 2 วิ แล้วไป introductionUI
    Future.delayed(
      Duration(
        seconds: 2,
      ),
      //เมื่อครบเวลาแล้วจะให้ทำอะไร
      //ในที่นี้ไป introductionUI
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => IntroductionUI(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/icon.png',
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                    ),
                    Text(
                      'SAU',
                      style: GoogleFonts.kanit(
                        fontSize: MediaQuery.of(context).size.height * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 4.0),
                            blurRadius: 5.0,
                            color: const Color.fromARGB(60, 60, 60, 1),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'coffee',
                      style: GoogleFonts.kanit(
                        fontSize: MediaQuery.of(context).size.height * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(141, 110, 99, 1),
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 4.0),
                            blurRadius: 5.0,
                            color: const Color.fromARGB(60, 60, 60, 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  'Let us make your day!',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.height * 0.016,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(60, 60, 60, 1),
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 4.0),
                        blurRadius: 8.0,
                        color: const Color.fromARGB(60, 60, 60, 1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
