import 'package:flutter/material.dart';
import 'package:messageapp/screen/calls_screen.dart';
import 'package:messageapp/screen/chat_screen.dart';
//import 'package:messageapp/screen/message_screen.dart';
import 'package:messageapp/screen/status_screen.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, initialIndex: 1, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
      tabController.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChatApp"),
        actions: <Widget>[
          const Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          Text("Kamera Ekranı"),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("Sohbet Ekranı"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onTabTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).secondaryHeaderColor,
            icon: Icon(Icons.camera_alt_outlined),
            label: "Kamera",
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).secondaryHeaderColor,
            icon: Icon(Icons.message_sharp),
            label: "Mesajlar",
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).secondaryHeaderColor,
            icon: Icon(Icons.circle_outlined),
            label: "Durum",
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).secondaryHeaderColor,
            icon: Icon(Icons.call),
            label: "Aramalar",
          ),
        ],
      ),
    );
  }
}
