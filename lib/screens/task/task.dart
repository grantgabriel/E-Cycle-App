import 'package:e_cycle/constants/colors.dart';
import 'package:flutter/material.dart';

class ETaskPage extends StatelessWidget {
  const ETaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 148, 33, 1),
        centerTitle: true,
        title: const Text(
          "E-Tasks",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          // Tab Navigation
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _TaskTabButton(
                  title: 'Tugas Harian',
                  icon: Icons.chat_bubble_outline,
                  selected: true,
                ),
                _TaskTabButton(
                  title: 'Tugas Mingguan',
                  icon: Icons.chat_bubble_outline,
                  selected: false,
                ),
                _TaskTabButton(
                  title: 'Semua Misi',
                  icon: Icons.chat_bubble_outline,
                  selected: false,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          // Task List
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Belum Selesai - 2',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    TaskTile(
                      icon: Icons.qr_code_scanner,
                      title: "Scan sampah hari ini",
                      description:
                          "Kumpulkan sampah di sekitar Anda, lalu lakukan pemindaian untuk identifikasi.",
                      points: 10,
                    ),
                    TaskTile(
                      icon: Icons.qr_code_scanner,
                      title: "Scan sampah hari ini",
                      description:
                          "Kumpulkan sampah di sekitar Anda, lalu lakukan pemindaian untuk identifikasi.",
                      points: 10,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Sudah Selesai - 3',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    TaskTile(
                      icon: Icons.qr_code_scanner,
                      title: "Scan sampah hari ini",
                      description:
                          "Kumpulkan sampah di sekitar Anda, lalu lakukan pemindaian untuk identifikasi.",
                      points: 10,
                      isDone: true,
                    ),
                    TaskTile(
                      icon: Icons.qr_code_scanner,
                      title: "Scan sampah hari ini",
                      description:
                          "Kumpulkan sampah di sekitar Anda, lalu lakukan pemindaian untuk identifikasi.",
                      points: 10,
                      isDone: true,
                    ),
                    TaskTile(
                      icon: Icons.qr_code_scanner,
                      title: "Scan sampah hari ini",
                      description:
                          "Kumpulkan sampah di sekitar Anda, lalu lakukan pemindaian untuk identifikasi.",
                      points: 10,
                      isDone: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTaskCard(String title, String description, String points,
      {bool isCompleted = false}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: isCompleted ? Colors.grey[200] : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.green),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.green[100],
          child: Icon(Icons.recycling, color: Colors.green),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isCompleted ? Colors.grey : Colors.black,
          ),
        ),
        trailing: Text(
          points,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isCompleted ? Colors.grey : Colors.green,
          ),
        ),
      ),
    );
  }
}

class _TaskTabButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool selected;

  const _TaskTabButton({
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
                fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class TaskTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final int points;
  final bool isDone;

  const TaskTile({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.points,
    this.isDone = false, // Default false
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isDone ? 0.5 : 1.0, // Kurangi opacity jika isDone true
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.only(left: 12, top: 12, bottom: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Ikon Hijau
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: Colors.green,
                size: 28,
              ),
            ),
            const SizedBox(width: 12),
            // Text Title dan Description
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
            // Badge Poin
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFF69804), primaryColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  bottomLeft: Radius.circular(16.0),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    '+$points',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.white,
                    ),
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
