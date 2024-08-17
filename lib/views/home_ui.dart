// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sau_coffee_app_project/views/login_ui.dart';
import 'package:sau_coffee_app_project/views/order_details_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<String> _discount = [
    'assets/images/dc1.png',
    'assets/images/dc2.png',
    'assets/images/dc3.png',
  ];

  List<String> _coffee = [
    'assets/images/cf1.png',
    'assets/images/cf2.png',
    'assets/images/cf3.png',
    'assets/images/cf4.png',
    'assets/images/cf5.png',
    'assets/images/cf6.png',
    'assets/images/cf7.png',
    'assets/images/cf8.png',
    'assets/images/cf9.png',
    'assets/images/cf10.png',
    'assets/images/cf11.png',
    'assets/images/cf12.png',
    'assets/images/cf13.png',
    'assets/images/cf14.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: TextField(
          decoration: InputDecoration(
            hintText: "What would you like to drink today?",
            hintStyle: GoogleFonts.lato(
              color: Colors.grey,
              fontSize: 15,
            ),
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Colors.brown,
              ),
            ),
            enabled: true,
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginUI()),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _discount.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(_discount[index]),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              'coffee',
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.height * 0.03,
                fontWeight: FontWeight.normal,
                color: Color.fromRGBO(141, 110, 99, 1),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.005,
                color: Colors.brown,
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: _coffee.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 2.5, bottom: 2.5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => OrderDetailsUI()),
                      );
                        },
                          child: Image.asset(
                        _coffee[index],
                      )),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
