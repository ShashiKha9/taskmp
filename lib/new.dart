

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp( MaterialApp(
      home:New()));
}
class New extends StatefulWidget{
  ProfileState createState()=> ProfileState();
}

class ProfileState extends State <New> {

  // This widget is the root of your application.

  @override

  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;

    return Scaffold(

        body:
        Stack(
            children: [
        Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors:[Color(0xfffc0366),Color(0xfffc0366)]
        )
    ),
    child: Container(
    width: double.infinity,
    height: 170,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text("  Profile",style: TextStyle(fontSize: 26,color: Colors.white),),
    Text("Edit   ",style: TextStyle(color: Colors.white),),

    ],


    ),




    ),


    ),



            ],


        ),





    );

  }
}
