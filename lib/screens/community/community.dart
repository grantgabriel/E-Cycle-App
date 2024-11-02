import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CommunityPage(),
    );
  }
}

final List<Community> communities = [
  Community("Zero E-Waste Community", "Dasar Sampah", "10/06/2024"),
  Community("Pengumpul Barang Elektronik", "Gacor kang ", "10/06/2024"),
  Community("Recycles Community", "Bersama, Mari Lakukan sebuah perubahan",
      "10/06/2024"),
  Community("Upcycling Community", "cuan bozz", "10/06/2024"),
  Community("E-Waste Champions", "less gooo", "10/06/2024"),
  Community("E-Waste-Free Warriors", "Katakan Tidak pada Plastik Sekali Pakai",
      "10/06/2024"),
];

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: const Color.fromRGBO(0, 148, 33, 1),
      title: Text(
        "E-Waste Community",
        style: TextStyle(color: Colors.white),
      ),
    ),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CommunityTab(icon: Icons.chat_bubble, label: 'Chats'),
              CommunityTab(icon: Icons.group, label: 'Friends', selected: true),
              CommunityTab(icon: Icons.groups, label: 'Groups'),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: communities.length,
            itemBuilder: (context, index) {
              return CommunityTile(community: communities[index]);
            },
          ),
        ),
      ],
    ),
  );
}

class CommunityTab extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;

  CommunityTab(
      {required this.icon, required this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: selected ? Colors.green : Colors.grey),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(color: selected ? Colors.green : Colors.grey),
        ),
      ],
    );
  }
}

class Community {
  final String name;
  final String description;
  final String date;

  Community(this.name, this.description, this.date);
}

class CommunityTile extends StatelessWidget {
  final Community community;

  CommunityTile({required this.community});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.green[50],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/community_placeholder.png'), // Sesuaikan gambar
                  radius: 24,
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      community.name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      community.description,
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  community.date,
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
                SizedBox(height: 8),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 10,
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
