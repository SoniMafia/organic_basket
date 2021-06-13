import 'package:flutter/material.dart';
import 'package:organic_basket/screens/login_screen.dart';
import './screens/welcome_screen.dart';
void main() => (MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: LoginScreen(),
    );
  }
}