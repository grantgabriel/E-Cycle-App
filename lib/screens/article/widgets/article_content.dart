import 'package:e_cycle/constants/app_styles.dart';
import 'package:flutter/material.dart';

class ArticleContent extends StatelessWidget {
  final String title;
  final String imgName;
  final String description;

  const ArticleContent({
    super.key,
    required this.title,
    required this.imgName,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppStyles.articleTitleStyle
        ),
        const SizedBox(height: 20),
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            "assets/images/$imgName",
            width: double.infinity,
            height: 176,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 13),
        Text(
          description,
          style: AppStyles.articleDescriptionStyle,
        ),
      ],
    );
  }
}
