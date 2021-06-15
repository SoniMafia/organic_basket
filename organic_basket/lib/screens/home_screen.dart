import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Hey!\n Lets Search Your Gloceory'),
        centerTitle: false,
        actions: [
          Image.asset('assets/images/google.png'),
        ],
      ),
    );
  }
}