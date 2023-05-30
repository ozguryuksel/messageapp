import 'package:flutter/material.dart';

class Home extends StatefulWidget {  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State{
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text("Ana Sayfa"),
    );
  }
}
