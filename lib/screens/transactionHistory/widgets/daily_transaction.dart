import 'package:e_cycle/models/transaction.dart';
import 'package:e_cycle/screens/transactionHistory/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_styles.dart';

class DailyTransaction extends StatelessWidget {
  final String date;
  final List<Map<String, dynamic>> transactionData;

  const DailyTransaction(
      {super.key, required this.date, required this.transactionData});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          date,
          style: AppStyles.titleStyle.copyWith(fontSize: 14),
        ),
        const Divider(),
        const SizedBox(height: 10),
        Column(
          children: transactionData
              .map((transactionMap) =>
                  TransactionTile(transactionData: transactionMap))
              .toList(),
        )
      ],
    );
  }
}
