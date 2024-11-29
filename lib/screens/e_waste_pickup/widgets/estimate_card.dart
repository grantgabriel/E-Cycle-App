import 'package:e_cycle/screens/e_waste_pickup/widgets/estimate_row.dart';
import 'package:flutter/material.dart';
import '../../widgets/dashed_line.dart';

class EstimateCard extends StatelessWidget {
  final int totalPrice;
  final int adminFee;

  const EstimateCard({
    super.key,
    required this.totalPrice,
    required this.adminFee
  });

  @override
  Widget build(BuildContext context) {
    final estimatedIncome = totalPrice - adminFee;

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            EstimateRow(
              label: "Total Harga",
              val: totalPrice
            ),
            const SizedBox(height: 12),
            EstimateRow(
              label: "Biaya Admin (10%)",
              val: adminFee
            ),
            const SizedBox(height: 12),
            const DashedLine(),
            const SizedBox(height: 12),
            EstimateRow(
              label: "Estimasi Pendapatan",
              val: estimatedIncome
            )
          ],
        ),
      ),
    );
  }
}
