import 'package:flutter/material.dart';
import 'package:organic_basket/widgtes/constant.dart';

class Welcomescreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
               height: mq.height*0.15,
            ),
            buildTitle(),
            Spacer(),
            buildButton(context,'Sign Up',mq),
            SizedBox(
              height: mq.height*0.025,
            ),
            buildButton(context,'Login',mq),
            Spacer(),
          ],

        ),
      ),
    );
  }
  Widget buildTitle(){
    return Container(
      child: Text(
        'The best\napp for\n your organic',style: TextStyle(
        fontSize: 40,fontWeight: FontWeight.bold,
      ),
      ),
    );
  }

  Widget buildButton(BuildContext context,String type,Size mq){
    return  SizedBox(
      height: mq.height*0.07,
      width: mq.width*0.8,
      child:ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        onPressed:(){
          if(type == 'Log in') {
            Navigator.of(context).pushReplacementNamed('./login-screen');
          }
          else{
            Navigator.of(context).pushReplacementNamed('./signup-screen');
          }
        },
        child: Text(type,
          style:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        ),
      ),
    );
  }
}