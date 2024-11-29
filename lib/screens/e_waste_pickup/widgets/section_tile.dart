import 'package:e_cycle/constants/app_styles.dart';
import 'package:e_cycle/constants/colors.dart';
import 'package:flutter/material.dart';

class SectionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imgName;
  final VoidCallback onTap;

  const SectionTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imgName,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.boldStyle.copyWith(fontSize: 16),
        ),
        const SizedBox(height: 11),
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
          child: ListTile(
            leading: Image.asset('assets/images/$imgName'),
            title: Text(
              subtitle,
              style: AppStyles.descriptionStyle.copyWith(
                fontSize: 14,
                color: (subtitle == "Pilih waktu pengambilan") || (subtitle == "Tetukan lokasimu") ? Colors.grey : Colors.black
              )
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: primaryColor,
            ),
            onTap: onTap,
          ),
        ),
      ],
    );
  }
}
