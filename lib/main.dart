import 'package:flutter/material.dart';

import 'home.dart';

void main()  => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mesaj Uygulaması",
        theme: ThemeData(
          primaryColor: Color(0xff075E54),
          hintColor: Color(0xff185618),
        ),
      home:Home(),
    );
  }//t1
}
