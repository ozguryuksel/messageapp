import 'package:flutter/material.dart';
import 'package:messageapp/models/chat.dart';


class ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChatScreenState();
  }
}

class ChatScreenState extends State {
  Chat chat () {
    throw UnimplementedError();
  }
  @override
  Widget build(BuildContext context) {
    print(fakeData.length);
    return ListView.builder(
        itemCount: fakeData.length,
        itemBuilder: (context, i) => Column(
              children: <Widget>[
                Divider(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(fakeData[i].avatarUrl),
                  ),
                  title: Row (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        fakeData[i].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        fakeData[i].time,
                        style: TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                    ],
                  ),
                  subtitle: Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      fakeData[i].message,
                      style: TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                  ),
                )
              ],
            ));
  }
}
