import 'package:e_cycle/constants/app_styles.dart';
import 'package:e_cycle/constants/colors.dart';
import 'package:e_cycle/screens/transactionHistory/tabs/completed_transaction.dart';
import 'package:e_cycle/screens/transactionHistory/tabs/ongoing_transaction.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  int _selectedIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
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
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios_new),
                  color: Colors.white
                ),
                Expanded(
                  child: Text(
                    "History Transaksi",
                    textAlign: TextAlign.center,
                    style: AppStyles.headerPageStyle.copyWith(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 48)
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
                )
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 42,
                      decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(9)
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => _onTabTapped(0),
                              child: Container(
                                padding: const EdgeInsets.all(9),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(9),
                                    bottomLeft: Radius.circular(9)
                                  ),
                                  color: _selectedIndex == 0 ? primaryColor : greyColor
                                ),
                                child: Center(
                                  child: Text(
                                    "Sedang Berlangsung",
                                    style: AppStyles.titleStyle.copyWith(
                                      fontSize: 14,
                                      color: _selectedIndex == 0
                                          ? Colors.white
                                          : Colors.grey.shade500
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => _onTabTapped(1),
                              child: Container(
                                padding: const EdgeInsets.all(9),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(9),
                                    bottomRight: Radius.circular(9)
                                  ),
                                  color: _selectedIndex == 1 ? primaryColor : greyColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "Selesai",
                                    style: AppStyles.titleStyle.copyWith(
                                      fontSize: 14,
                                      color: _selectedIndex == 1
                                          ? Colors.white
                                          : Colors.grey.shade500
                                    ),
                                  ),
                                ),
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: _selectedIndex == 0
                          ? const OngoingTransactionTab()
                          : const CompletedTransactionTab(),
                    )
                  ],
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}
