import 'package:flutter/material.dart';
import 'package:login_ui/screen/home/view/enter_screen.dart';
import 'package:login_ui/screen/home/view/home_screen.dart';
import 'package:login_ui/screen/sign_in/view/sign_in_screen.dart';
import 'package:login_ui/screen/sign_up/view/sign_up_screen.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomeScreen(),
        'in':(context) => SignInScreen(),
        'up':(context) => SignUpScreen(),
        'enter':(context) => EnterScreen(),
      },
    ),
  );
}