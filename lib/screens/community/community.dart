import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 148, 33, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 148, 33, 1),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "E-Waste Community",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CommunityTabButton(
                  title: 'Chats',
                  icon: Icons.chat_bubble_outline,
                  selected: true,
                ),
                CommunityTabButton(
                  title: 'Friends',
                  icon: Icons.people_outline,
                  selected: false,
                ),
                CommunityTabButton(
                  title: 'Groups',
                  icon: Icons.group_outlined,
                  selected: false,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: const [
                  CommunityTile(
                    imagePath: 'assets/images/zeroe.png',
                    title: 'Zero E-Waste Community',
                    description:
                        'Merangkul kehidupan yang berkelanjutan, selangkah demi selangkah',
                    date: '10/06/2024',
                    messageCount: 1,
                  ),
                  CommunityTile(
                    imagePath: 'assets/images/pengumpul.png',
                    title: 'Pengumpul Barang Elektronik',
                    description:
                        'Mengubah sisa-sisa dapur menjadi point yang berguna',
                    date: '10/06/2024',
                    messageCount: 1,
                  ),
                  CommunityTile(
                    imagePath: 'assets/images/recycles.png',
                    title: 'Recycles Community',
                    description: 'Bersama, Mari Lakukan sebuah perubahan',
                    date: '10/06/2024',
                    messageCount: 1,
                  ),
                  CommunityTile(
                    imagePath: 'assets/images/upcycling.png',
                    title: 'Upcycling Community',
                    description: 'Bebaskan kreativitas Anda, kurangi limbah',
                    date: '10/06/2024',
                    messageCount: 1,
                  ),
                  CommunityTile(
                    imagePath: 'assets/images/ewaste.png',
                    title: 'E-Waste Champions',
                    description:
                        'Jelajahi solusi mutakhir untuk pengelolaan limbah',
                    date: '10/06/2024',
                    messageCount: 1,
                  ),
                  CommunityTile(
                    imagePath: 'assets/images/warriors.png',
                    title: 'E-Waste-Free Warriors',
                    description: 'Katakan Tidak pada Plastik Sekali Pakai',
                    date: '10/06/2024',
                    messageCount: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CommunityTabButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool selected;

  const CommunityTabButton({
    super.key,
    required this.title,
    required this.icon,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selected ? Colors.green : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.green),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Column(
        children: [
          Icon(icon, color: selected ? Colors.white : Colors.green),
          const SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              color: selected ? Colors.white : Colors.green,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class CommunityTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String date;
  final int messageCount;

  const CommunityTile({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.date,
    required this.messageCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(date, style: const TextStyle(fontSize: 12, color: Colors.grey)),
              const SizedBox(height: 8),
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.green,
                child: Text(
                  '$messageCount',
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
