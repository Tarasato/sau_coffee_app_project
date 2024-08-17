// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sau_coffee_app_project/views/login_ui.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.purple[100],
      body: Padding(
        padding: EdgeInsets.all(1),
        child: Stack(
          children: [
            Flexible(
              child: IntroductionScreen(
                scrollPhysics: BouncingScrollPhysics(),
                pages: [
                  PageViewModel(
                    titleWidget: Text(
                      'Choose and customize your Drinks',
                      style: GoogleFonts.kanit(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    image: Padding(
                      padding: EdgeInsets.only(right: 15, top: 100),
                      child: Image.asset('assets/images/intro1.png'),
                    ),
                    bodyWidget: Text(
                      'Customize your own drink exactly how you like it by adding any topping you like!!!',
                      style: GoogleFonts.kanit(
                          fontSize: MediaQuery.of(context).size.height * 0.023,
                          color: Color.fromRGBO(85, 85, 85, 1)),
                    ),
                  ),
                  PageViewModel(
                    titleWidget: Text(
                      'Quickly and easily',
                      style: GoogleFonts.kanit(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    image: Padding(
                      padding: EdgeInsets.only(right: 25, top: 100),
                      child: Image.asset('assets/images/intro2.png'),
                    ),
                    bodyWidget: Text(
                      'You can place your order quickly and easily without wasting time. You can also schedule orders via your smartphone.',
                      style: GoogleFonts.kanit(
                          fontSize: MediaQuery.of(context).size.height * 0.023,
                          color: Color.fromRGBO(85, 85, 85, 1)),
                    ),
                  ),
                  PageViewModel(
                    titleWidget: Text(
                      'Get and Redeem Voucher',
                      style: GoogleFonts.kanit(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    image: Image.asset('assets/images/intro3.png'),
                    bodyWidget: Text(
                      'Exciting prizes await you! Redeem yours by collecting all the points after purchase in the app!',
                      style: GoogleFonts.kanit(
                          fontSize: MediaQuery.of(context).size.height * 0.023,
                          color: Color.fromRGBO(85, 85, 85, 1)),
                    ),
                  ),
                ],
                dotsDecorator: DotsDecorator(
                  size: Size(
                    MediaQuery.of(context).size.width * 0.025,
                    MediaQuery.of(context).size.height * 0.025,
                  ),
                  color: Colors.grey,
                  activeSize: Size(
                    MediaQuery.of(context).size.width * 0.050,
                    MediaQuery.of(context).size.height * 0.025,
                  ),
                  activeColor: Colors.brown,
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                  ),
                ),
                next: Container(
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Text(
                        'NEXT',
                        style: GoogleFonts.kanit(
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: MediaQuery.of(context).size.height * 0.03,
                      ),
                    ],
                  ),
                ),
                dotsFlex: 0,
                nextFlex: 2,
                  done: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '    Login/Register',
                          style: GoogleFonts.kanit(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.height * 0.03,
                        ),
                      ],
                    ),
                  ),
                onDone: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginUI(),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40,
              right: 20,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginUI()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                child: Text(
                  'Skip',
                  style: GoogleFonts.kanit(
                    fontSize: 19,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
