import 'package:flutter/material.dart';
import 'package:organic_basket/screens/home_screen.dart';
import './screens/welcome_screen.dart';
import './screens/login_screen.dart';
import './screens/signup_screen.dart';

void main() => (MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: HomeScreen(),
       routes: {
        './welcome-screen': (ctx) => Welcomescreen(),
        './login-screen': (ctx) => LoginScreen(),
        './signup-screen': (ctx) => SignUpScreeen(),
      },
    );
  }
}