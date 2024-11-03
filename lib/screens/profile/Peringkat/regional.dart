import 'package:e_cycle/constants/colors.dart';
import 'package:e_cycle/screens/profile/Peringkat/widgets/header.dart';
import 'package:e_cycle/screens/profile/Peringkat/widgets/rank.dart';
import 'package:flutter/material.dart';

class RegionalPage extends StatelessWidget {
  const RegionalPage({super.key});

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
                          backgroundColor: const Color(0xffF2F2F2),
                          foregroundColor: const Color(0xff999999),
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
                          backgroundColor: const Color(0xff009421),
                          foregroundColor: Colors.white,
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
                      child: Image.asset('assets/images/iru.png'),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Radeng Khairu",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text("567rb WastePoint",
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
                      child: Image.asset('assets/images/alwin.png'),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Alwin Liufandy",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text("999rb WastePoint",
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
                      child: Image.asset('assets/images/marc.png'),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Marcus Aurelius",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text("100rb WastePoint",
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
                image: 'assets/images/eric.png',
                name: 'Ericko_LIM',
                weight: '237rb WastePoint'),
            Rank(
                rank: '#5',
                image: 'assets/images/cen.png',
                name: 'Cendy_an',
                weight: '127rb WastePoint'),
            Rank(
                rank: '#6',
                image: 'assets/images/cool.png',
                name: 'keren_Boy',
                weight: '110rb WastePoint'),
            Rank(
                rank: '#7',
                image: 'assets/images/yanto.png',
                name: 'Yanto cukurukuk',
                weight: '98rb WastePoint'),
            Rank(
                rank: '#8',
                image: 'assets/images/oswin.png',
                name: 'RRQ_Oswald',
                weight: '69rb WastePoint'),
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
