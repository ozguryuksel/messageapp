import 'package:flutter/material.dart';
import 'package:messageapp/models/calls.dart';


class CallsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChatScreenState();
  }
}

class ChatScreenState extends State {
  Calls chat () {
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
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    fakeData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        fakeData[i].time,
                        style: TextStyle(fontSize: 15.0, color: Colors.grey),
                      ),
                      SizedBox(width: 5.0), // İkon ile zaman arasına boşluk ekler
                      Icon(
                        Icons.info_outline_rounded,
                        size: 15.0,
                        color: Colors.lightBlue,
                      ),
                    ],
                  ),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.call,
                      size: 15.0,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      fakeData[i].calls,
                      style: TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
