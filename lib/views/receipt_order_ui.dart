// ignore_for_file: non_constant_identifier_names, prefer_final_fields, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sau_coffee_app_project/views/home_ui.dart';
import 'package:sau_coffee_app_project/views/order_details_ui.dart';
import 'package:intl/intl.dart';

class ReceiptOrderUI extends StatefulWidget {
  const ReceiptOrderUI({super.key});

  @override
  State<ReceiptOrderUI> createState() => _ReceiptOrderUIState();
}

class _ReceiptOrderUIState extends State<ReceiptOrderUI> {
  void _incrementNumber() {
    coffee_milk_count = int.tryParse(_coffee_milk_controller.text) ?? 0;
    coffee_milk_count++;
    setState(() {
      _coffee_milk_controller.text = coffee_milk_count.toString();
    });
  }

  void _decrementNumber() {
    coffee_milk_count = int.tryParse(_coffee_milk_controller.text) ?? 0;
    setState(() {
      if (coffee_milk_count != 1) {
        coffee_milk_count--;
      }
      _coffee_milk_controller.text = coffee_milk_count.toString();
    });
  }

  int coffee_milk_count = 1;
  TextEditingController _coffee_milk_controller =
      TextEditingController(text: '1');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => OrderDetailsUI()),
            );
          },
        ),
        title: Text(
          'Receipt Order',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  //ครี่งบน
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 190, 190, 190),
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Thank you!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Your transaction was successful',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            '\tID Transaction',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            '\t D123456789ABC',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '\tDate',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            width: 205,
                          ),
                          Text(
                            '\t ${DateFormat('dd MMM yyyy').format(DateTime.now())}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '\tTime',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            width: 235,
                          ),
                          Text(
                            '\t ${DateFormat.jm().format(DateTime.now())}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 180,
                child: Center(
                  child: Image.asset(
                    'assets/images/scc.png',
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Container(
              //ครึ่งล่าง
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.325,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 190, 190, 190),
                    width: 1,
                  ),
                  left: BorderSide(
                    color: Color.fromARGB(255, 190, 190, 190),
                    width: 1,
                  ),
                  right: BorderSide(
                    color: Color.fromARGB(255, 190, 190, 190),
                    width: 1,
                  ),
                ),
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '\tItem',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '\tCoffee milk',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        width: 235,
                      ),
                      Text(
                        'x1',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '\tIce, Regular, Normal Sugar, Normal Ice',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        '\tPayment Summary',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            '\tPrice',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            width: 250,
                          ),
                          Text(
                            '\t25 Baht',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            '\tVoucher',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            width: 275,
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            '\tTotal',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            width: 255,
                          ),
                          Text(
                            '25 Baht',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '\tPayment Method',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Cash',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(200, 50),
              backgroundColor: Colors.brown,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeUI()),
              );
            },
            child: Text(
              'Home',
              style: GoogleFonts.kanit(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
