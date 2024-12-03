import 'package:e_cycle/constants/app_styles.dart';
import 'package:e_cycle/constants/colors.dart';
import 'package:e_cycle/screens/withdraw/widgets/e_voucher_card.dart';
import 'package:e_cycle/widgets/new_header.dart';
import 'package:flutter/material.dart';

class VoucherDetailScreen extends StatelessWidget {
  final Map<String, dynamic> voucherData;

  const VoucherDetailScreen({super.key, required this.voucherData});

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            content: SizedBox(
              height: 120,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Kamu akan menukar ${voucherData['price']} point untuk ${voucherData['voucher_title']}",
                      style: AppStyles.descriptionStyle.copyWith(fontSize: 14),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(),
                ],
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                      onPressed: () => Navigator.pop(context),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.red),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Batal",
                        style: AppStyles.descriptionStyle
                            .copyWith(color: Colors.red),
                      )),
                  const SizedBox(width: 20),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        _showSuccessDialog(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Text(
                        "Tukar",
                        style: AppStyles.descriptionStyle
                            .copyWith(color: Colors.white),
                      )),
                ],
              )
            ],
          );
        });
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SizedBox(
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/success-tick-dribbble-2.png",
                    width: 113,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0, left: 18, right: 18, bottom: 10),
                    child: Column(
                      children: [
                        Text(
                          "Selamat!",
                          style: AppStyles.titleStyle.copyWith(fontSize: 14),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          "Kamu telah berhasil menukarkan Voucher!",
                          style: AppStyles.descriptionStyle,
                        ),
                      ],
                    ),
                  ),
                  const Divider()
                ],
              ),
            ),
            actions: [
              Center(
                child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6))),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Text(
                        "OK",
                        style: AppStyles.descriptionStyle
                            .copyWith(color: Colors.white),
                      ),
                    )),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: NewHeader(title: "E-Voucher"),
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding:
                const EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 40),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: SingleChildScrollView(
              child: DefaultTabController(
                length: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    EVoucherCard(eVoucher: voucherData),
                    const SizedBox(height: 55),
                    Column(
                      children: [
                        const TabBar(
                            isScrollable: true,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            indicatorColor: Colors.black,
                            tabs: [
                              Tab(text: 'Overview'),
                              Tab(text: 'Cara Penukaran'),
                              Tab(text: 'S & K'),
                            ]),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: SizedBox(
                            height: 100,
                            child: TabBarView(
                              children: [
                                Text(voucherData['overview']),
                                const Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam..."),
                                const Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam..."),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 200),
                    ElevatedButton(
                        onPressed: () => _showConfirmationDialog(context),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          backgroundColor: primaryColor,
                          minimumSize: const Size(300, 50),
                        ),
                        child: Text(
                          "Tukarkan",
                          style: AppStyles.descriptionStyle
                              .copyWith(fontSize: 16, color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
