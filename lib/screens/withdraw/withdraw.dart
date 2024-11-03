import 'package:e_cycle/screens/withdraw/tabs/e_voucher.dart';
import 'package:e_cycle/screens/withdraw/tabs/withdraw_money.dart';
import 'package:e_cycle/widgets/toggle_tabs.dart';
import 'package:flutter/material.dart';

import '../../constants/app_styles.dart';
import '../../constants/colors.dart';

class WithdrawPage extends StatefulWidget {
  const WithdrawPage({super.key});

  @override
  State<WithdrawPage> createState() => _WithdrawPageState();
}

class _WithdrawPageState extends State<WithdrawPage> {
  int _selectedTab = 0;

  void _onTabTapped(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 70, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios_new),
                  color: Colors.white,
                ),
                Expanded(
                    child: Text(
                      "E-Point",
                      textAlign: TextAlign.center,
                      style: AppStyles.headerPageStyle.copyWith(color: Colors.white),
                    )
                ),
                const SizedBox(width: 50)
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ToggleTabs(
                      tab1: "Withdraw",
                      tab2: "E-Voucher",
                      selectedTab: _selectedTab,
                      onTabTapped: _onTabTapped,
                    ),
                    const SizedBox(height: 24),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: _selectedTab == 0
                          ? const WithdrawMoneyTab()
                          : const EVoucherTab()
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
