import 'package:e_cycle/constants/colors.dart';
import 'package:e_cycle/screens/home.dart';
import 'package:flutter/material.dart';

class NewHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const NewHeader({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => const Size.fromHeight(52);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
          weight: 4,
        ),
        color: Colors.white,
      ),
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
            fontFamily: "Poppins"),
      ),
    );
  }
}
