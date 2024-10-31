import 'package:flutter/material.dart';

//list menu tanpa arrow

Widget ListMenu({required String title, required String image}) => Container(
      width: 372,
      height: 58,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                offset: const Offset(2, 2),
                color: const Color(0xff000000).withOpacity(0.24))
          ]),
      child: Row(
        children: [
          const SizedBox(
            width: 5,
          ),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff3A82EB).withOpacity(0.1)),
            child: Center(
              child: Image.asset(
                image,
                width: 27,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(child: Text(title)),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
