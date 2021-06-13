import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: mq.height*0.1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Login to your\naccount',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Welcome back!',
                  style: TextStyle(
                    fontSize: 25
                  ),
                ),
              ),
              buildEmailField(),
              buildPasswordField(),
              buildLoginButton(mq),
              Text('OR',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.grey,
              ),
              ),
              buildLGoogleButton(mq),
              buildSignupButton(),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildEmailField(){
    return Container(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Name',
          prefixIcon: Icon(Icons.person),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
  Widget buildPasswordField(){
    return Container(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          prefixIcon: Icon(Icons.vpn_key),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget buildLoginButton(Size mq){
    return SizedBox(
      height: mq.height*0.07,
      width: mq.width*0.8,
      child: ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            )
          ),
          child:Text('Login',style: TextStyle(
        fontSize: 20,fontWeight: FontWeight.bold
      ),
      )
      ),
    );
  }
  Widget buildLGoogleButton(Size mq){
    return SizedBox(
      height: mq.height*0.07,
      width: mq.width*0.8,
      child: ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              )
          ),
          child:Row(
            children: [
              Text('Login With Google',style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
              ),
              ),
            ],
          )
      ),
    );
  }
  Widget buildSignupButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don\'t have an account? Sign up'),
        TextButton(
            onPressed: (){}, child: Text('Sign Up'))
      ],
    );
  }

}