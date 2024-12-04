import 'package:e_cycle/constants/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final Map<String, dynamic> transactionData;

  const TransactionTile({
    super.key,
    required this.transactionData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/images/withdraw_icon.png"),
              const SizedBox(width: 9),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transactionData["transactionTitle"],
                          style: AppStyles.titleStyle.copyWith(fontSize: 14),
                        ),
                        // const SizedBox(width: 50,),
                        Text(
                          "+${transactionData["pointChange"]} E-Point",
                          style: AppStyles.descriptionStyle
                              .copyWith(fontStyle: FontStyle.italic),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          transactionData["transactionType"],
                          style: AppStyles.descriptionStyle
                              .copyWith(color: Colors.grey),
                        ),
                        Text(
                          transactionData["transactionTime"],
                          style: AppStyles.descriptionStyle
                              .copyWith(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Divider()
        ],
      ),
    );
  }
}
