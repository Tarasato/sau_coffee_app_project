// ignore_for_file: prefer_const_constructors, camel_case_types, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sau_coffee_app_project/views/home_ui.dart';
import 'package:sau_coffee_app_project/views/order_details_ui.dart';
import 'package:sau_coffee_app_project/views/receipt_order_ui.dart';
import 'package:sau_coffee_app_project/views/splash_screen_ui.dart';


void main() {
  runApp(
    //call main widget MaterialApp()
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(), //เรียกหน้าจอแรกของแอป
    ),
  );
}