import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        // elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              // Aksi untuk Clear All
            },
            child: Text('Clear All', style: TextStyle(color: Colors.white)),
          ),
        ],

        leading: Container(
          height: 40,
          width: 40,
          child: Icon(
            Icons.arrow_back,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),

        title: Text(
          "Notifikasi",
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Text('Hari ini',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            NotificationTile(
              imagePath: 'assets/images/coin.png',
              title: 'Tugas selesai!',
              description:
                  'Selamat! Kamu telah menerima 10 E-Point dari aktivitas di E-Cycle.',
              time: '22:10 PM',
            ),
            NotificationTile(
              imagePath: 'assets/images/green.png',
              title: 'E-Pickup Selesai!',
              description:
                  'Selamat! Kamu telah menerima extra 25 E-Cycle dari aktivitas E-Pickup',
              time: '09:10 AM',
            ),
            NotificationTile(
              imagePath: 'assets/images/coin.png',
              title: 'Tugas selesai!',
              description:
                  'Selamat! Kamu telah menerima 10 E-Point dari aktivitas di E-Cycle.',
              time: '22:10 PM',
            ),
            SizedBox(height: 20),
            Text('18 Mei, 2024',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            NotificationTile(
              imagePath: 'assets/images/green.png',
              title: 'E-Pickup Selesai!',
              description:
                  'Selamat! Kamu telah menerima extra 25 E-Cycle dari aktivitas E-Pickup',
              time: '09:10 AM',
            ),
            NotificationTile(
              imagePath: 'assets/images/coin.png',
              title: 'Tugas selesai!',
              description:
                  'Selamat! Kamu telah menerima 10 E-Point dari aktivitas di E-Cycle.',
              time: '22:10 PM',
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String time;

  const NotificationTile({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
              child: Image.asset(
            imagePath,
            width: 100,
            height: 100,
          )),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text(description),
              ],
            ),
          ),
          Text(time, style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
