import 'package:e_cycle/constants/app_styles.dart';
import 'package:flutter/material.dart';

class EstimateRow extends StatelessWidget {
  final String label;
  final int val;

  const EstimateRow({
    super.key,
    required this.label,
    required this.val
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset('assets/images/coin_icon.png'),
            const SizedBox(width: 14),
            Text(
              label,
              style: AppStyles.descriptionStyle,
            ),
          ],
        ),
        Text(
          '$val',
          style: AppStyles.descriptionStyle.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
