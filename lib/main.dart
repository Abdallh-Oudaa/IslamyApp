import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:islamy/ui/home/home_screen.dart';
import 'package:islamy/ui/home/quran/chapterDetalis/Quran_Chapter_Detalis.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent,));
  runApp(my_app());
}
class my_app extends StatelessWidget {
  const my_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black,fontSize:20,),
        ),
        scaffoldBackgroundColor: Colors.transparent,
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFB7935F),
        primary: Color(0xFFB7935F),
        secondary:Color(0xFFB7935F),
        onPrimary:Colors.white ,
        onSecondary:Colors.black,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
        ),
      ),
      initialRoute: home_screen.RoutName,
      routes: {
       // Splash_screen.RoutName:(context)=>Splash_screen(),
      home_screen.RoutName:(context) => home_screen(),
   
      quran_Chapter_Detalis.RoutName:(context)=>quran_Chapter_Detalis(),
      },
    );
  }
}