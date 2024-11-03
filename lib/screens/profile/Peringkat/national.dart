import 'package:e_cycle/constants/colors.dart';
import 'package:e_cycle/screens/profile/Peringkat/widgets/header.dart';
import 'package:e_cycle/screens/profile/Peringkat/widgets/rank.dart';
import 'package:flutter/material.dart';

class NationalPage extends StatelessWidget {
  const NationalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Container(
        height: 72,
        child: Header,
        decoration: const BoxDecoration(color: primaryColor),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        width: double.infinity,
        height: 730,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 53),
              child: SizedBox(
                width: 324,
                height: 42,
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff009421),
                          foregroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                            ),
                          ),
                        ),
                        child: const Text("Nasional"),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffF2F2F2),
                          foregroundColor: const Color(0xff999999),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                        ),
                        child: const Text("Regional"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset('assets/images/riau.png'),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Riau",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text("320rb ton",
                        style: TextStyle(
                            color: const Color(0xff000000).withOpacity(0.6),
                            fontSize: 12)),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 110,
                      height: 138,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset('assets/images/medan.png'),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Medan",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text("628rb ton",
                        style: TextStyle(
                            color: const Color(0xff000000).withOpacity(0.6),
                            fontSize: 12)),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 82,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset('assets/images/aceh.png'),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Aceh",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text("250rb ton",
                        style: TextStyle(
                            color: const Color(0xff000000).withOpacity(0.6),
                            fontSize: 12)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 18),
            Rank(
                rank: '#4',
                image: 'assets/images/bengkulu.png',
                name: 'Bengkulu',
                weight: '237rb ton'),
            Rank(
                rank: '#5',
                image: 'assets/images/manokwari.png',
                name: 'Manokwari',
                weight: '167rb ton'),
            Rank(
                rank: '#6',
                image: 'assets/images/palangkaraya.png',
                name: 'Palangkaraya',
                weight: '117rb ton'),
            Rank(
                rank: '#7',
                image: 'assets/images/papuab.png',
                name: 'Papua Barat',
                weight: '97rb ton'),
            Rank(
                rank: '#8',
                image: 'assets/images/pontianak.png',
                name: 'Pontianak',
                weight: '76rb ton'),
            const SizedBox(
              width: 20,
            ),
            Container(
              width: 372,
              height: 68,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(
              height: 23,
            ),
          ],
        )),
      )
    ])));
  }
}
