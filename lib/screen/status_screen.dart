import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  final List<StatusItem> statusItems = [
    StatusItem(
      name: 'YÜKSEL',
      time: '1 Saat Önce',
      imageUrl: 'https://ozguryuksel.com.tr/index/images/profile.png',
    ),
    StatusItem(
      name: 'Özgür',
      time: '3 Saat Önce',
      imageUrl: 'https://media.licdn.com/dms/image/D5635AQHGgYpkPEVQ1w/profile-framedphoto-shrink_400_400/0/1684597396455?e=1686236400&v=beta&t=eCWVHixrkoYDR4k-dbh4N1wZPovfrjkzT8PpyDMogzw',
    ),
    // Diğer durum öğeleri buraya eklenebilir
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Durumlar',style:TextStyle(color: Colors.black),),
      ),
      body: ListView.builder(
        itemCount: statusItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(statusItems[index].imageUrl),
            ),
            title: Text(statusItems[index].name),
            subtitle: Text('Durum: ${statusItems[index].time}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StatusDetailScreen(
                    imageUrl: statusItems[index].imageUrl,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class StatusDetailScreen extends StatelessWidget {
  final String imageUrl;

  StatusDetailScreen({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Durum Detayı'),
      ),
      body: Center(
        child: Image.network("https://ozguryuksel.com.tr/index/images/profile.png"),
      ),
    );
  }
}

class StatusItem {
  final String name;
  final String time;
  final String imageUrl;

  StatusItem({
    required this.name,
    required this.time,
    required this.imageUrl,
  });
}

void main() {
  runApp(MaterialApp(
    home: StatusScreen(),
  ));
}
