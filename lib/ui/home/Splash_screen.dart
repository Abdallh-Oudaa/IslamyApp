import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamy/ui/home/home_screen.dart';

class Splash_screen extends StatefulWidget {
  static const String RoutName="Splash";
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  void initSate(){
    super.initState();
    Timer(Duration(seconds:3),
    ()=>Navigator.pushNamed(context,home_screen.RoutName));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width:double.infinity,
        height: double.infinity,
       decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topRight,end: Alignment.bottomRight,
        colors:[Color(0xFFB7935F),Color(0xFFB7935F)],),
       ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Image.asset("assets/images/qur2an_screen_logo.png",height: 300,width: 300,),
          Text("ISLAMY APP\nTO ALL MUSLIMS",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          CircularProgressIndicator(),
        ],),
      ),
    );
  }
}