import 'package:e_cycle/constants/colors.dart';
import 'package:flutter/material.dart';

Widget Header = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white)),
      const Text(
        "Profil",
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.edit,
            color: Colors.white,
          ))
    ],
  ),
);
