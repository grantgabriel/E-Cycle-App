import 'package:e_cycle/constants/app_styles.dart';
import 'package:e_cycle/constants/colors.dart';
import 'package:flutter/material.dart';

class ToggleTabs extends StatelessWidget {
  final String tab1;
  final String tab2;
  final int selectedTab;
  final Function(int) onTabTapped;

  const ToggleTabs({
    super.key,
    required this.tab1,
    required this.tab2,
    required this.selectedTab,
    required this.onTabTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      decoration: BoxDecoration(
          color: greyColor,
          borderRadius: BorderRadius.circular(9),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 2)
            ),
          ]
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => onTabTapped(0),
              child: Container(
                padding: const EdgeInsets.all(9),
                decoration: BoxDecoration(
                  color: selectedTab == 0 ? primaryColor : greyColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(9),
                    bottomLeft: Radius.circular(9)
                  ),
                ),
                child: Center(
                  child: Text(
                    tab1,
                    style: AppStyles.titleStyle.copyWith(
                      fontSize: 14,
                      color: selectedTab == 0
                        ? Colors.white
                        : Colors.grey.shade500
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => onTabTapped(1),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(9),
                    bottomRight: Radius.circular(9)
                  ),
                  color: selectedTab == 1 ? primaryColor : greyColor,
                ),
                child: Center(
                  child: Text(
                    tab2,
                    style: AppStyles.titleStyle.copyWith(
                      fontSize: 14,
                      color: selectedTab == 1
                        ? Colors.white
                        : Colors.grey.shade500
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
