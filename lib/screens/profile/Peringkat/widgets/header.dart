import 'package:flutter/material.dart';

Widget Header = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white)),
      const Text(
        "E-Leaderboard",
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
      const SizedBox(
        width: 25,
      )
    ],
  ),
);
