import 'package:e_cycle/constants/app_styles.dart';
import 'package:e_cycle/constants/colors.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final int quantity;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;
  final VoidCallback onRemove;

  const ItemCard({
    super.key,
    required this.title,
    required this.quantity,
    required this.onIncrease,
    required this.onDecrease,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: IconButton(
          onPressed: onRemove,
          icon:  const Icon(Icons.cancel, color: Colors.red,)
        ),
        title: Text(
          title,
          style: AppStyles.titleStyle.copyWith(fontSize: 14),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: onDecrease,
              icon: const Icon(Icons.remove_circle_outline, color: Colors.red,)
            ),
            Text(
              '$quantity',
              style: AppStyles.boldStyle.copyWith(fontSize: 12),
            ),
            IconButton(
              onPressed: onIncrease,
              icon: const Icon(Icons.add_circle_outline, color: primaryColor,)
            )
          ],
        ),
      ),
    );
  }
}
