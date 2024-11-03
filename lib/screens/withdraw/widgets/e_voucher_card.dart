import 'package:e_cycle/constants/app_styles.dart';
import 'package:e_cycle/constants/colors.dart';
import 'package:flutter/material.dart';

class EVoucherCard extends StatelessWidget {
  const EVoucherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 371,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 12,
            offset: Offset(0, 2)
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8)
            ),
            child: Image.asset(
              "assets/images/voucher_1.png",
              fit: BoxFit.cover,
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "Voucher DISKON 15% Samsung Refurbished",
                    style: AppStyles.descriptionStyle.copyWith(fontSize: 14),
                  ),
                ),
                const SizedBox(width: 24),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)
                    ),
                  ),
                  child: Text(
                    "150 Point",
                    style: AppStyles.descriptionStyle.copyWith(
                      color: purpleColor
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
