import 'package:flutter/material.dart';

import '../../../constants/app_styles.dart';

class DoubleTextSpacebeetween extends StatelessWidget {
  final String text1;
  final String text2;

  const DoubleTextSpacebeetween({
    super.key,
    required this.text1,
    required this.text2
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: AppStyles.descriptionStyle,
        ),
        Text(
          text2,
          style: AppStyles.descriptionStyle,
        )
      ],
    );
  }
}
