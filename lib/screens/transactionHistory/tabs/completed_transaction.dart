import 'package:e_cycle/constants/app_styles.dart';
import 'package:e_cycle/models/transaction.dart';
import 'package:e_cycle/screens/transactionHistory/widgets/daily_transaction.dart';
import 'package:e_cycle/screens/transactionHistory/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';

class CompletedTransactionTab extends StatelessWidget {
  const CompletedTransactionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DailyTransaction(
          date: "Hari ini.",
          transactionData: transactionData1,
        ),
        const SizedBox(height: 25),
        DailyTransaction(
          date: "Senin, 17 Agustus 2024",
          transactionData: transactionData2,
        ),
      ],
    );
  }
}
