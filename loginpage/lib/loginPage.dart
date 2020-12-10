import 'package:flutter/material.dart';


class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 15.0,bottom: 100.0,left: 20.0,right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Logo",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 40.0,),
            Text("Login",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),),
            SizedBox(height: 40.0,),
            buildTextField("Email"),
            SizedBox(height: 20.0,),
            buildTextField("Password"),
            SizedBox(height: 10.0,),
            container(),
            SizedBox(height: 40.0,),
            buildButton(),
            SizedBox(height: 15.0,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",style: TextStyle(fontSize: 15.0),),
                  SizedBox(width: 10.0,),
                  Text("SIGN UP",style: TextStyle(fontSize: 15.0,color: Colors.deepOrange),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 Widget buildTextField(String hintText){
  return TextField(
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: Colors.grey,
        fontSize: 15.0,
      ),
        border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(20.0),
    ),
      prefixIcon: hintText == "Email" ? Icon(Icons.email) : Icon(Icons.lock),
    ),
  );
 }
 Widget container(){
  return Container(
    padding: EdgeInsets.only(right: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Forgotten Password?",
        style: TextStyle(
          color: Colors.blue
        ),),
      ],
    ),
  );
 }
 Widget buildButton(){
  return Container(
    height: 50.0,
    //width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Colors.deepOrange,
      borderRadius: BorderRadius.circular(20.0),
      gradient: LinearGradient(
        colors: [
          Color(0xFFFB415B),
          Color(0xFFEE5623),
        ]
      ),

    ),
    child: Center(child: Text("LOGIN",style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold ),)),
  );

 }