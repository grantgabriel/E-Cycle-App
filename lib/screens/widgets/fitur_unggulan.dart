import 'package:e_cycle/constants/colors.dart';
import 'package:flutter/material.dart';

class FiturUnggulan extends StatelessWidget {

  final String imagePath;
  final String label;
  final Widget page;


  const FiturUnggulan({
    super.key,
    required this.imagePath,
    required this.label,
    required this.page
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => page,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              shape:
                  const CircleBorder(), // Membuat tombol berbentuk bulat sempurna
              padding: const EdgeInsets.all(15),
            ),
            child: Image.asset(
              imagePath,
              width: 35,
            )),
        const SizedBox(height: 5),
        SizedBox(
          width: 78,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}
