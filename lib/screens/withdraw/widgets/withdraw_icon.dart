import 'package:e_cycle/screens/withdraw/withdrawing.dart';
import 'package:flutter/material.dart';

class WithdrawIcon extends StatelessWidget {
  final String title;
  final String image;
  const WithdrawIcon({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Withdrawing(withdrawDestination: title)));
      },
      child: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 1,
                    offset: Offset(0, 1),
                    color: Color(0xff000000).withOpacity(0.15))
              ]),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Image.asset(image),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  fontFamily: 'Poppins'),
            )
          ],
        ),
      ),
    );
  }
}
