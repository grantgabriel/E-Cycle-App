import 'package:e_cycle/constants/app_styles.dart';
import 'package:e_cycle/constants/colors.dart';
import 'package:e_cycle/screens/e_waste_pickup/widgets/estimate_card.dart';
import 'package:e_cycle/screens/e_waste_pickup/widgets/select_pickup_time_modal.dart';
import 'package:e_cycle/screens/e_waste_pickup/widgets/select_waste_type_modal.dart';
import 'package:e_cycle/screens/e_waste_pickup/widgets/item_card.dart';
import 'package:e_cycle/screens/e_waste_pickup/widgets/section_tile.dart';
import 'package:flutter/material.dart';

import '../widgets/map_screen.dart';

class EWastePickupScreen extends StatefulWidget {
  const EWastePickupScreen({super.key});

  @override
  State<EWastePickupScreen> createState() => _EWastePickupScreenState();
}

class _EWastePickupScreenState extends State<EWastePickupScreen> {
  final Map<String, int> _selectedItems = {};
  String _selectedTimes = "";
  final int pricePerItem = 400;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios_new),
                  color: Colors.white,
                ),
                Expanded(
                  child: Text(
                    "E-Pickup",
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
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                )
              ),
              child: ListView(
                children: [
                  Text(
                    "Jenis Sampah",
                    style: AppStyles.boldStyle.copyWith(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  ..._selectedItems.entries.map((entry) {
                    return ItemCard(
                      title: entry.key,
                      quantity: entry.value,
                      onIncrease: () => setState(() {
                        _selectedItems[entry.key] = entry.value + 1;
                      }),
                      onDecrease: () => setState(() {
                        if (entry.value > 1) {
                          _selectedItems[entry.key] = entry.value - 1;
                        } else {
                          _selectedItems.remove(entry.key);
                        }
                      }),
                      onRemove: () => setState(() {
                        _selectedItems.remove(entry.key);
                      }),
                    );
                  }),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () async {
                      List<String> res = await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SelectWasteTypeModal(
                            items: const [
                              "Smartphone",
                              "TV",
                              "Laptop",
                              "AC / Kipas Bekas",
                              "Lainnya"
                            ],
                            itemsIcon: const [
                              "electronics-chip-icon.png",
                              "ic_outline-laptop.png",
                              "clarity_battery-line.png",
                              "ph_fan-icon.png",
                              "Ellipse-icon.png"
                            ],
                            currSelected: _selectedItems.keys.toList()
                          );
                        }
                      );

                      setState(() {
                        for (var item in res) {
                          _selectedItems.putIfAbsent(item, () => 1);
                        }
                      });
                    },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        )
                      ),
                    child: Text(
                      "Pilih Jenis Sampahmu",
                      style: AppStyles.descriptionStyle.copyWith(
                        color: Colors.white,
                        fontSize: 14
                      ),
                    )
                  ),
                  if (_selectedItems.isNotEmpty) ... [
                    const SizedBox(height: 12),
                    Text(
                      "Perkiraan Pendapatan",
                      style: AppStyles.boldStyle.copyWith(fontSize: 16),
                    ),
                    const SizedBox(height: 12),
                    EstimateCard(
                      totalPrice: calcTotalPrice(),
                      adminFee: calcAdminFee(),
                    ),
                  ],
                  const SizedBox(height: 32),
                  SectionTile(
                    title: "Lokasi Penjemputan",
                    subtitle: "Tetukan lokasimu",
                    imgName: "location_icon2.png",
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MapScreen()
                      )
                    )
                  ),
                  const SizedBox(height: 32),
                  SectionTile(
                    title: "Waktu Penjemputan",
                    subtitle: _selectedTimes.isEmpty ? "Pilih waktu pengambilan" : _selectedTimes,
                    imgName: "solar_sort-by-time-linear.png",
                    onTap: () async {
                      List<String> times = [
                        "17:00 - 19:00",
                        "17:30 - 19:30",
                        "18:00 - 20:00",
                        "19:00 - 21:00",
                        "19:30 - 21:30"
                      ];
                      String res = await showDialog<String>(
                        context: context,
                        builder: (BuildContext context) {
                          return SelectPickupTimeModal(
                            times: times,
                            currSelectedTime: _selectedTimes,
                          );
                        }
                      ) ?? _selectedTimes;

                      setState(() {
                        _selectedTimes = res;
                      });
                    }
                  ),
                  const SizedBox(height: 62),
                  ElevatedButton(
                    onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        )
                      ),
                    child: Text(
                      "CARI WASTE PICKER",
                      style: AppStyles.descriptionStyle.copyWith(
                        color: Colors.white,
                        fontSize: 14
                      ),
                    )
                  )
                ],
              )
            )
          )
        ],
      ),
    );
  }

  int calcTotalPrice() => _selectedItems.values.fold(0, (tot, quantity) => tot + quantity * pricePerItem);
  int calcAdminFee() => (calcTotalPrice() * 0.1).toInt();
}
