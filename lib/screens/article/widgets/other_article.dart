import 'package:flutter/material.dart';

import '../../../constants/app_styles.dart';

class OtherArticle extends StatelessWidget {
  final String title;
  final String imgName;
  final String addtionalInformation;

  const OtherArticle({
    super.key,
    required this.title,
    required this.imgName,
    required this.addtionalInformation
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              "assets/images/$imgName",
              width: 116,
              height: 58,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppStyles.titleStyle.copyWith(
                    fontSize: 13
                  ),
                ),
                Text(
                  addtionalInformation,
                  style: AppStyles.descriptionStyle.copyWith(
                    fontSize: 10,
                    color: Colors.grey
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
