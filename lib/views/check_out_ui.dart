// ignore_for_file: non_constant_identifier_names, prefer_final_fields, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sau_coffee_app_project/views/order_details_ui.dart';
import 'package:sau_coffee_app_project/views/receipt_order_ui.dart';

class CheckOutUI extends StatefulWidget {
  const CheckOutUI({super.key});

  @override
  State<CheckOutUI> createState() => _CheckOutUIState();
}

class _CheckOutUIState extends State<CheckOutUI> {
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
        title: Text('Customize Order', style: TextStyle(color: Colors.black)),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    "25 Baht",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ReceiptOrderUI()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5E4037), // Brown color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                child: Text(
                  "Check Out",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.brown,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/images/coffee_milk.png',
                        height: MediaQuery.of(context).size.height * 0.08,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 1),
                            child: Row(
                              children: [
                                Text(
                                  'Coffee milk',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 150),
                                  child: Text(
                                    '25 Baht',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 90),
                            child: Text(
                              'Ice, Regular, Normal Sugar, \nNormal Ice',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.35,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.delete_outline),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.1,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: FloatingActionButton(
                                  heroTag: "btn1",
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          topLeft: Radius.circular(10))),
                                  onPressed: _decrementNumber,
                                  backgroundColor: Colors.brown,
                                  child: Icon(Icons.remove),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                    border: Border.all(
                                        width: 1, color: Colors.brown)),
                                width: MediaQuery.of(context).size.width * 0.1,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: Text(
                                  '$coffee_milk_count',
                                  style: GoogleFonts.kanit(
                                    fontSize: 24,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0)),
                                width: MediaQuery.of(context).size.width * 0.1,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: FloatingActionButton(
                                  heroTag: "btn2",
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  onPressed: _incrementNumber,
                                  backgroundColor: Colors.brown,
                                  child: Icon(
                                    Icons.add,
                                    size: MediaQuery.of(context).size.width *
                                        0.05,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => OrderDetailsUI()),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.brown,
                ),
                Text(
                  'Add Order',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
