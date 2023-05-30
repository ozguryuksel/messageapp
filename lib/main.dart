import 'package:flutter/material.dart';
import 'package:messageapp/home.dart';
//import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mesaj Uygulaması",
      theme: ThemeData(
        colorSchemeSeed: Color(0xf406594f),
        secondaryHeaderColor: Color(0xff007343), // Ana renk
       // colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff340a0a)).copyWith(
         // secondary: const Color(0xf391730b), //Yardımcı renk),
      ),
      home: Home(),
    );
  }
}
