import 'package:e_cycle/constants/app_styles.dart';
import 'package:e_cycle/constants/colors.dart';
import 'package:e_cycle/screens/withdraw/widgets/airplane_gif.dart';
import 'package:e_cycle/screens/withdraw/widgets/withdraw_inputfield.dart';
import 'package:e_cycle/screens/widgets/new_header.dart';
import 'package:flutter/material.dart';

class Withdrawing extends StatelessWidget {
  final String withdrawDestination;
  const Withdrawing({super.key, required this.withdrawDestination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: NewHeader(title: "Withdraw"),
      body: Expanded(
        child: Container(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 30),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 45),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Tukar Ke ${withdrawDestination?.toUpperCase() ?? ''}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      const Text(
                        'Silahkan masukkan jumlah yang ingin ditukar',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      WithdrawInputfield(),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            'Poin Kamu :',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 13,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            'assets/images/coin.png',
                            width: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '999999',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w200,
                              fontFamily: 'Poppins',
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 262,
                      ),
                      ElevatedButton(
                        onPressed: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => MenukarDialog(),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: primaryColor,
                          minimumSize: const Size(372, 50),
                        ),
                        child: Text(
                          "Tukarkan",
                          style: AppStyles.descriptionStyle
                              .copyWith(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class MenukarDialog extends StatelessWidget {
  const MenukarDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => BerhasilDialog(),
          );
        },
        child: Container(
          width: 372,
          height: 200,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AirplaneGif(),
              SizedBox(
                height: 10,
              ),
              Text('Menukar...',
                  style: AppStyles.descriptionStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class BerhasilDialog extends StatelessWidget {
  const BerhasilDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: Container(
        width: 372,
        height: 200,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/success-tick.gif',
              width: 140,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Berhasil!',
              style: AppStyles.descriptionStyle.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
