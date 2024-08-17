// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_final_fields, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sau_coffee_app_project/views/check_out_ui.dart';
import 'package:sau_coffee_app_project/views/home_ui.dart';

class OrderDetailsUI extends StatefulWidget {
  const OrderDetailsUI({super.key});

  @override
  State<OrderDetailsUI> createState() => _OrderDetailsUIState();
}

class _OrderDetailsUIState extends State<OrderDetailsUI> {
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

  TextEditingController _notes_controller = TextEditingController(text: '');

  String _variantChoice = 'Ice';
  String _sizeChoice = 'Regular';
  String _sugarChoice = 'Normal';
  String _iceChoice = 'Normal';

  bool extraEsspresso = false;
  bool cincau = false;
  bool coffee_jelly = false;
  bool chocolate_ice_cream = false;

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
              MaterialPageRoute(builder: (context) => HomeUI()),
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
                        MaterialPageRoute(builder: (context) => CheckOutUI()),
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
                  "Add Order",
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: const Color.fromARGB(255, 221, 218, 205),
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 1,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/coffee_milk.png',
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 190, 190, 190),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 0, top: 10),
                          child: Text(
                            '\tCoffee',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.brown,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\tCoffee milk',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Column(
                              children: [
                                Text(
                                  '25 Baht\t',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   height: MediaQuery.of(context).size.height * 0.01,
                        // ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '\t\tIce americano + fresh milk',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.15,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
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
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          border: Border.all(
                                              width: 1, color: Colors.brown)),
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
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
                                          borderRadius:
                                              BorderRadius.circular(0)),
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      child: FloatingActionButton(
                                        heroTag: "btn2",
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10))),
                                        onPressed: _incrementNumber,
                                        backgroundColor: Colors.brown,
                                        child: Icon(
                                          Icons.add,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // SizedBox(
                            //   height: MediaQuery.of(context).size.height * 0.01,
                            // ),
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text('4.9 (23)'),
                                const SizedBox(width: 8),
                                Text(
                                  'Ratings and reviews',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.241,
                                ),
                                IconButton(
                                  icon: Icon(Icons.keyboard_arrow_right),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.295,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 190, 190, 190),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 0, top: 10),
                          child: Text(
                            '\tCustomize',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.brown,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\t\tVariant',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.1,
                            ),
                            Row(
                              children: [
                                ChoiceChip(
                                  label: Text('Ice'),
                                  selected: _variantChoice == 'Ice',
                                  onSelected: (selected) {
                                    setState(() {
                                      _variantChoice = 'Ice';
                                    });
                                  },
                                  selectedColor: Colors.brown,
                                  backgroundColor: Colors.white,
                                  showCheckmark: false,
                                  labelStyle: TextStyle(
                                    color: _variantChoice == 'Ice'
                                        ? Colors.white
                                        : Colors.brown,
                                  ),
                                  shape: StadiumBorder(
                                    side: BorderSide(color: Colors.brown),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                                ChoiceChip(
                                  label: Text('Hot'),
                                  selected: _variantChoice == 'Hot',
                                  onSelected: (selected) {
                                    setState(() {
                                      _variantChoice = 'Hot';
                                    });
                                  },
                                  selectedColor: Colors.brown,
                                  backgroundColor: Colors.white,
                                  showCheckmark: false,
                                  labelStyle: TextStyle(
                                    color: _variantChoice == 'Hot'
                                        ? Colors.white
                                        : Colors.brown,
                                  ),
                                  shape: StadiumBorder(
                                    side: BorderSide(color: Colors.brown),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\t\tSize',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.1,
                            ),
                            Row(
                              children: [
                                ChoiceChip(
                                  label: Text('Regular'),
                                  selected: _sizeChoice == 'Regular',
                                  onSelected: (selected) {
                                    setState(() {
                                      _sizeChoice = 'Regular';
                                    });
                                  },
                                  selectedColor: Colors.brown,
                                  backgroundColor: Colors.white,
                                  showCheckmark: false,
                                  labelStyle: TextStyle(
                                    color: _sizeChoice == 'Regular'
                                        ? Colors.white
                                        : Colors.brown,
                                  ),
                                  shape: StadiumBorder(
                                    side: BorderSide(color: Colors.brown),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                                ChoiceChip(
                                  label: Text('Medium'),
                                  selected: _sizeChoice == 'Medium',
                                  onSelected: (selected) {
                                    setState(() {
                                      _sizeChoice = 'Medium';
                                    });
                                  },
                                  selectedColor: Colors.brown,
                                  backgroundColor: Colors.white,
                                  showCheckmark: false,
                                  labelStyle: TextStyle(
                                    color: _sizeChoice == 'Medium'
                                        ? Colors.white
                                        : Colors.brown,
                                  ),
                                  shape: StadiumBorder(
                                    side: BorderSide(color: Colors.brown),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                                ChoiceChip(
                                  label: Text('Large'),
                                  selected: _sizeChoice == 'Large',
                                  onSelected: (selected) {
                                    setState(() {
                                      _sizeChoice = 'Large';
                                    });
                                  },
                                  selectedColor: Colors.brown,
                                  backgroundColor: Colors.white,
                                  showCheckmark: false,
                                  labelStyle: TextStyle(
                                    color: _sizeChoice == 'Large'
                                        ? Colors.white
                                        : Colors.brown,
                                  ),
                                  shape: StadiumBorder(
                                    side: BorderSide(color: Colors.brown),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\t\Sugar',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.1,
                            ),
                            Row(
                              children: [
                                ChoiceChip(
                                  label: Text('Normal'),
                                  selected: _sugarChoice == 'Normal',
                                  onSelected: (selected) {
                                    setState(() {
                                      _sugarChoice = 'Normal';
                                    });
                                  },
                                  selectedColor: Colors.brown,
                                  backgroundColor: Colors.white,
                                  showCheckmark: false,
                                  labelStyle: TextStyle(
                                    color: _sugarChoice == 'Normal'
                                        ? Colors.white
                                        : Colors.brown,
                                  ),
                                  shape: StadiumBorder(
                                    side: BorderSide(color: Colors.brown),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                                ChoiceChip(
                                  label: Text('Less'),
                                  selected: _sugarChoice == 'Less',
                                  onSelected: (selected) {
                                    setState(() {
                                      _sugarChoice = 'Less';
                                    });
                                  },
                                  selectedColor: Colors.brown,
                                  backgroundColor: Colors.white,
                                  showCheckmark: false,
                                  labelStyle: TextStyle(
                                    color: _sugarChoice == 'Less'
                                        ? Colors.white
                                        : Colors.brown,
                                  ),
                                  shape: StadiumBorder(
                                    side: BorderSide(color: Colors.brown),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\t\tIce',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.1,
                            ),
                            Row(
                              children: [
                                ChoiceChip(
                                  label: Text('Normal'),
                                  selected: _iceChoice == 'Normal',
                                  onSelected: (selected) {
                                    setState(() {
                                      _iceChoice = 'Normal';
                                    });
                                  },
                                  selectedColor: Colors.brown,
                                  backgroundColor: Colors.white,
                                  showCheckmark: false,
                                  labelStyle: TextStyle(
                                    color: _iceChoice == 'Normal'
                                        ? Colors.white
                                        : Colors.brown,
                                  ),
                                  shape: StadiumBorder(
                                    side: BorderSide(color: Colors.brown),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                                ChoiceChip(
                                  label: Text('Less'),
                                  selected: _iceChoice == 'Less',
                                  onSelected: (selected) {
                                    setState(() {
                                      _iceChoice = 'Less';
                                    });
                                  },
                                  selectedColor: Colors.brown,
                                  backgroundColor: Colors.white,
                                  showCheckmark: false,
                                  labelStyle: TextStyle(
                                    color: _iceChoice == 'Less'
                                        ? Colors.white
                                        : Colors.brown,
                                  ),
                                  shape: StadiumBorder(
                                    side: BorderSide(color: Colors.brown),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.295,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 190, 190, 190),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 0, top: 10),
                          child: Text(
                            '\tTopping',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Row(
                          children: [
                            Text(
                              '\t\tExtra Esspresso',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.325,
                            ),
                            Text(
                              '5 Baht',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Checkbox(
                              value: extraEsspresso,
                              onChanged: (bool? value) {
                                setState(() {
                                  extraEsspresso = value!;
                                });
                              },
                              checkColor: Colors.white,
                              activeColor: Colors.brown,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '\t\tcincau',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                            ),
                            Text(
                              '6 Baht',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Checkbox(
                              value: cincau,
                              onChanged: (bool? value) {
                                setState(() {
                                  cincau = value!;
                                });
                              },
                              checkColor: Colors.white,
                              activeColor: Colors.brown,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '\t\tCoffee jelly',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.415,
                            ),
                            Text(
                              '3 Baht',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Checkbox(
                              value: coffee_jelly,
                              onChanged: (bool? value) {
                                setState(() {
                                  coffee_jelly = value!;
                                });
                              },
                              checkColor: Colors.white,
                              activeColor: Colors.brown,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '\t\tChocolate Ice Cream',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.232,
                            ),
                            Text(
                              '7 Baht',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Checkbox(
                              value: chocolate_ice_cream,
                              onChanged: (bool? value) {
                                setState(() {
                                  chocolate_ice_cream = value!;
                                });
                              },
                              checkColor: Colors.white,
                              activeColor: Colors.brown,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.295,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 190, 190, 190),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Stack(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '\t\tNotes',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          TextField(
                            controller: _notes_controller,
                            maxLines: 6, // จำนวนบรรทัดของ TextField
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: 'optional notes',
                            ),
                          )
                        ],
                      ),
                    ]),
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
