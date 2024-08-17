// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sau_coffee_app_project/views/home_ui.dart';
import 'package:sau_coffee_app_project/views/login_ui.dart';

class PinUI extends StatefulWidget {
  const PinUI({super.key});

  @override
  State<PinUI> createState() => _PinUIState();
}

class _PinUIState extends State<PinUI> {
  List<String> currentPin = ["", "", "", "", "", ""]; // ใช้ list เก็บ PIN
  TextEditingController pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: .5,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginUI()),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Input you PIN"),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 550),
                child: Image.asset(
                  'assets/images/pin.png',
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50, ),
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
                        MaterialPageRoute(builder: (context) => HomeUI()),
                      );
                    },
                    child: Text(
                      'Confirm',
                      style: GoogleFonts.kanit(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: 330,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Enter 6 digit PIN for secure account access',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 190),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(6, (index) {
                        return buildPinDot(index);
                      }),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ),
            Padding(
            padding: EdgeInsets.only(top: 270),
            child: TextField(
                      autofocus: true,
                      showCursor: false,
                      controller: pinController,
                      keyboardType: TextInputType.number,
                      obscureText: true, 
                      maxLength: 6, 
                      style: TextStyle(
                        color:
                            Colors.transparent,
                      ),
                      onChanged: (value) {
                        setState(() {
                          for (int i = 0; i < value.length; i++) {
                            currentPin[i] = "*";
                          }
                          for (int i = value.length; i < 6; i++) {
                            currentPin[i] = "";
                          }
                        });
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: "",
                      ),
                    ),),
            Padding(
              padding: EdgeInsets.only(top: 350, ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forgot PIN?',
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
                        MaterialPageRoute(builder: (context) => PinUI()),
                      );
                    },
                    child: Text(
                      '  Change PIN.',
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

  Widget buildPinDot(int index) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentPin[index] == "*"
            ? Colors.black
            : Colors.grey, // เปลี่ยนสีตามสถานะ
      ),
    );
  }
}
