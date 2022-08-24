import 'package:flutter/material.dart';
import 'package:login/profile_screen.dart';
import 'package:login/scan_screen.dart';
import 'home.dart';
import 'package:login/basepage.dart';
import 'package:login/Notification.dart';
import 'package:login/signup.dart';
import 'login_screen.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );

  }
}
