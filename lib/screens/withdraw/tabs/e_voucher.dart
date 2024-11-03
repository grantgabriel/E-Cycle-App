import 'package:e_cycle/constants/app_styles.dart';
import 'package:e_cycle/screens/withdraw/widgets/e_voucher_card.dart';
import 'package:flutter/material.dart';

class EVoucherTab extends StatelessWidget {
  const EVoucherTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "E-Voucher Tersedia",
          style: AppStyles.titleStyle,
        ),
        const SizedBox(height: 3),
        Text(
          "15 E-Voucher",
          style: AppStyles.descriptionStyle.copyWith(
            color: Colors.grey
          ),
        ),
        const SizedBox(height: 15),
        const EVoucherCard(),
        const SizedBox(height: 15),
        const EVoucherCard(),
        const SizedBox(height: 15),
        const EVoucherCard(),
        const SizedBox(height: 15),
        const EVoucherCard(),
        const SizedBox(height: 15),
        const EVoucherCard(),
        const SizedBox(height: 15),
        const EVoucherCard(),
      ],
    );
  }
}
