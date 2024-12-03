import 'package:e_cycle/screens/transactionHistory/widgets/ongoing_transaction_card.dart';
import 'package:flutter/material.dart';

class OngoingTransactionTab extends StatelessWidget {
  const OngoingTransactionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OngoingTransactionCard(),
        SizedBox(height: 16),
      ],
    );
  }
}
