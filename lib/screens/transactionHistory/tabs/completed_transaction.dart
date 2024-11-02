import 'package:e_cycle/constants/app_styles.dart';
import 'package:flutter/material.dart';

class CompletedTransactionTab extends StatelessWidget {
  const CompletedTransactionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hari ini",
          style: AppStyles.titleStyle.copyWith(fontSize: 14),
        ),
        const Divider(),
      ],
    );
  }
}
