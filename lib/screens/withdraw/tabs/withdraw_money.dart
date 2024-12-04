import 'package:e_cycle/models/withdraw_items.dart';
import 'package:e_cycle/screens/withdraw/widgets/withdraw_icon.dart';
import 'package:flutter/material.dart';
import 'package:e_cycle/screens/withdraw/tabs/withdraw_detail_page.dart';

class WithdrawMoneyTab extends StatelessWidget {
  const WithdrawMoneyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 193,
            child: const Text(
              'Tukar point-mu menjadi saldo untukmu',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          const SizedBox(
            height: 14,
          ),
          const Text(
            'Tukar ke E-wallet',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          // E-Wallet Icons
          const Row(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WithdrawIcon(
                  image: 'assets/images/withdraw_dana.png', title: 'Dana'),
              SizedBox(
                width: 32,
              ),
              WithdrawIcon(
                  image: 'assets/images/withdraw_gopay.png', title: 'Gopay'),
              SizedBox(
                width: 32,
              ),
              WithdrawIcon(
                  image: 'assets/images/withdraw_ovo.png', title: 'OVO'),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          const Text(
            'Tukar ke Bank',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            width: 243,
            decoration: BoxDecoration(
              color: Colors.white, // Warna background TextField
              borderRadius: BorderRadius.circular(15), // Radius untuk TextField
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1), // Warna shadow
                  spreadRadius: 1, // Seberapa jauh shadow menyebar
                  blurRadius: 6, // Seberapa kabur shadow
                  offset: Offset(0, 2), // Posisi shadow
                ),
              ],
            ),
            child: const TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  hintText: 'Cari bank tujuan',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                    fontSize: 14,
                  ), // Hint text di dalam TextField
                  suffixIcon:
                      Icon(Icons.search), // Ikon pencarian di dalam TextField
                  border: InputBorder.none, // Tidak ada border pada TextField
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 0)),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          // Bank Icons
          GridView.count(
            padding: EdgeInsets.zero,
            shrinkWrap: true, // Aktifkan ini
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            crossAxisCount: 4,
            children: List.generate(withdrawItems.length, (index) {
              return WithdrawIcon(
                  title: withdrawItems[index]['title']!,
                  image: withdrawItems[index]['image']!);
            }),
          ),
        ],
      ),
    );
  }
}
