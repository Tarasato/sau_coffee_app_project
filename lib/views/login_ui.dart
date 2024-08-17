// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sau_coffee_app_project/views/pin_ui.dart';
import 'package:sau_coffee_app_project/views/register_ui.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 200, left: 50),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/icon.png',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 220, left: 160),
              child: Row(
                children: [
                  Text(
                    'SAU',
                    style: GoogleFonts.kanit(
                      fontSize: MediaQuery.of(context).size.height * 0.04,
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
                      fontSize: MediaQuery.of(context).size.height * 0.04,
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
            ),
            Padding(
              padding: EdgeInsets.only(top: 265, left: 160),
              child: Column(
                children: [
                  Text(
                    'Let us make your day!',
                    style: GoogleFonts.kanit(
                      fontSize: MediaQuery.of(context).size.height * 0.014,
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
            Padding(
              padding: EdgeInsets.only(top: 288, left: 160),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.42,
                    height: MediaQuery.of(context).size.height * 0.005,
                    color: Colors.brown,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 340, left: 20),
              child: Column(
                children: [
                  Text(
                    'No. phone',
                    style: GoogleFonts.kanit(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 380, left: 20, right: 20),
              child: TextField(
                controller: _phoneController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your phone ...',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 460, left: 20),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.07,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => PinUI()),
                      );
                  },
                  child: Text(
                    'Login',
                    style: GoogleFonts.kanit(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 800, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an Account?',
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterUI()),
                      );
                    },
                    child: Text(
                      ' Register',
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
