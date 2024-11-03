import 'package:flutter/material.dart';

import '../../../constants/app_styles.dart';

class TripleContentRow extends StatelessWidget {
  final String imgName;
  final String text1;
  final String text2;

  const TripleContentRow({
    super.key,
    required this.imgName,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset("assets/images/$imgName"),
        const SizedBox(width: 15),
        Text(
          text1,
          style: AppStyles.descriptionStyle.copyWith(fontWeight: FontWeight.w400),
        ),
        Expanded(
          child: Text(
            text2,
            textAlign: TextAlign.end,
            style: AppStyles.descriptionStyle.copyWith(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}
