import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State with SingleTickerProviderStateMixin {
  late TabController tabcontroller;

  @override
  void initState() {
    super.initState();
    tabcontroller = TabController(length: 4, initialIndex: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChatApp"),
        bottom: TabBar(
          controller: tabcontroller,
          indicatorColor: Colors.pink,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt_outlined),text: "Kamera"),
            Tab(icon: Icon(Icons.messenger_outlined),text: "Mesajlar"),
            Tab(icon: Icon(Icons.circle_outlined),text: "Durum"),
            Tab(icon: Icon(Icons.call),text: "Aramalar"),
           // Tab(text: "Chats"),
            //Tab(text: "Status"),
            //Tab(text: "Calls"),
          ],
        ),
        actions: <Widget>[
          const Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
      ),
      body: TabBarView(
        controller: tabcontroller,
        children: <Widget>[
          Text("Kamera Ekranı"),
          Text("Sohbet Ekranı"),
          Text("Durum Ekranı"),
          Text("Aramalar Ekranı"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        child: Icon(
          Icons.message,
          color:Colors.white,
        ),
        onPressed: ()=>print("Sohbet Ekranı"),
      ),
    );
  }
}
