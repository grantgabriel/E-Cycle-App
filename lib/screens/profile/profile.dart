import 'package:e_cycle/screens/profile/widgets/header.dart';
import 'package:e_cycle/screens/profile/widgets/list_menu.dart';
import 'package:e_cycle/screens/profile/widgets/list_menua.dart';
import 'package:e_cycle/screens/profile/widgets/logout.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 56,
          ),
          Header,
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
              child: Column(children: [
                const SizedBox(
                  height: 7,
                ),
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset('assets/images/profile.png'),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Grant Gabriel Tambunana",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Text("grantgabriel@students.usu.ac.id",
                    style: TextStyle(
                        color: const Color(0xff000000).withOpacity(0.6),
                        fontSize: 14)),
                const SizedBox(
                  height: 26,
                ),
                Container(
                  width: 372,
                  height: 68,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(2, 2),
                            color: const Color(0xffF15D5D).withOpacity(0.24))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 22,
                          ),
                          Image.asset(
                            'assets/images/coin.png',
                            width: 36,
                          ),
                          const Text(
                            "9999",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                          const Text(
                            "E-Point",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 10),
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 0.5,
                              style: BorderStyle.solid,
                              strokeAlign: BorderSide.strokeAlignOutside),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: 126,
                              height: 45,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff009421),
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12))),
                                  child: const Text("Tukarkan"))),
                          const SizedBox(
                            width: 19,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                ListMenua(
                    title: 'Histori Transaksi',
                    image: 'assets/images/v_history.png'),
                const SizedBox(
                  height: 10,
                ),
                ListMenua(title: 'Tugas', image: 'assets/images/v_ass.png'),
                const SizedBox(
                  height: 10,
                ),
                ListMenua(
                    title: 'Peringkat', image: 'assets/images/v_rank.png'),
                const SizedBox(
                  height: 10,
                ),
                ListMenua(
                    title: 'Notifikasi', image: 'assets/images/v_notif.png'),
                const SizedBox(
                  height: 10,
                ),
                ListMenu(
                    title: 'Kebijakan Privasi',
                    image: 'assets/images/v_policy.png'),
                const SizedBox(
                  height: 10,
                ),
                ListMenua(
                    title: 'Medali-ku', image: 'assets/images/v_medal.png'),
                const SizedBox(
                  height: 10,
                ),
                ListMenua(
                    title: 'Ganti Password', image: 'assets/images/v_pass.png'),
                const SizedBox(
                  height: 10,
                ),
                ListMenua(
                    title: 'Pusat Bantuan', image: 'assets/images/v_help.png'),
                const SizedBox(
                  height: 10,
                ),
                Logout(title: 'Log Out', image: 'assets/images/v_logout.png'),
                const SizedBox(
                  height: 127,
                ),
                const Align(
                    alignment: Alignment.center, child: Text("Versi 1.0.0")),
                const SizedBox(
                  height: 72,
                )
              ]),
            ),
          )
        ],
      ),
    ));
  }
}
