import 'package:flutter/material.dart';

// List menu tanpa arrow dengan modifikasi
Widget Rank({
  required String rank,
  required String image,
  required String name,
  required String weight,
}) =>
    Container(
      width: 372,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 21,
          ),
          Text(
            rank,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          const SizedBox(
            width: 18,
          ),
          SizedBox(
            width: 48,
            height: 48,
            child: Center(
              child: Image.asset(
                image,
                width: 56,
              ),
            ),
          ),
          const SizedBox(
            width: 21,
          ),
          Expanded(
            child: Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            weight,
            style: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize: 14,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
