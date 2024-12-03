import 'package:e_cycle/constants/colors.dart';
import 'package:e_cycle/screens/transactionHistory/widgets/double_text_spacebeetween.dart';
import 'package:e_cycle/screens/transactionHistory/widgets/triple_content_row.dart';
import 'package:e_cycle/widgets/dashed_line.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_styles.dart';

class OngoingTransactionCard extends StatefulWidget {
  const OngoingTransactionCard({super.key});

  @override
  State<OngoingTransactionCard> createState() => _OngoingTransactionCardState();
}

class _OngoingTransactionCardState extends State<OngoingTransactionCard> {
  bool _isExpanded = false;

  void _onTapWidget() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTapWidget,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
        padding: const EdgeInsets.all(11),
        decoration: BoxDecoration(
          color: greyColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                // spreadRadius: 2,
                offset: Offset(0, 2))
          ],
        ),
        height: _isExpanded ? 530 : 195,
        // clipBehavior: Clip.hardEdge,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/delivery_icon.png"),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      "Sip!, Tunggu ya, kami sedang mencarikan E-Picker untukmu",
                      style: AppStyles.titleStyle.copyWith(fontSize: 14),
                    ),
                  ),
                ],
              ),
              const Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sisa waktu pencarian E-Picker: 180 detik",
                    style: AppStyles.descriptionStyle
                        .copyWith(color: primaryColor),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Apabila waktu pencarian habis, penjemputan akan dibatalkan secara otomatis",
                    style: AppStyles.descriptionStyle
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              // const SizedBox(height: 10),
              if (_isExpanded) ...[
                const Divider(),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/time_icon.png"),
                        const SizedBox(width: 8),
                        Text(
                          "17:30 - 19:30",
                          style:
                              AppStyles.descriptionStyle.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/location_icon.png"),
                        const SizedBox(width: 8),
                        Text(
                          "Jl. Abdul Hakim, Padang Bulan",
                          style: AppStyles.titleStyle.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 5),
                const Divider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Detail Sampah Elektronik",
                      style: AppStyles.titleStyle
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 8),
                    const DoubleTextSpacebeetween(
                        text1: "Smartphone Samsung J15", text2: "1 item"),
                    const SizedBox(height: 3),
                    const DoubleTextSpacebeetween(
                        text1: "LG A34 TV ELD", text2: "1 item"),
                    const SizedBox(height: 3),
                    const DoubleTextSpacebeetween(
                        text1: "AC Samsung", text2: "1 item"),
                  ],
                ),
                const Divider(),
                const Column(
                  children: [
                    TripleContentRow(
                      imgName: 'coin_icon.png',
                      text1: 'Total harga',
                      text2: '1.400.000',
                    ),
                    SizedBox(height: 8),
                    TripleContentRow(
                      imgName: 'coin_icon.png',
                      text1: 'Biaya admin (10%)',
                      text2: '200.000',
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const DashedLine(),
                const SizedBox(height: 8),
                const TripleContentRow(
                    imgName: 'coin_icon.png',
                    text1: 'Estimasi pendapatan',
                    text2: '1.200.000'),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 15),
                  child: Center(
                    child: OutlinedButton(
                      onPressed: _onTapWidget,
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.red),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      child: Text(
                        "BATAL",
                        style: AppStyles.descriptionStyle
                            .copyWith(color: Colors.red),
                      ),
                    ),
                  ),
                )
              ],
              SizedBox(
                height: 20,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 4,
                    width: MediaQuery.of(context).size.width * .36,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(2)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
