import 'package:e_cycle/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_styles.dart';

class SelectPickupTimeModal extends StatefulWidget {
  final List<String> times;
  final String currSelectedTime;

  const SelectPickupTimeModal(
      {super.key, required this.times, required this.currSelectedTime});

  @override
  State<SelectPickupTimeModal> createState() => _SelectPickupTimeModalState();
}

class _SelectPickupTimeModalState extends State<SelectPickupTimeModal> {
  String _selectedTime = "";

  @override
  void initState() {
    super.initState();
    _selectedTime = widget.currSelectedTime;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 200, maxHeight: 550),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/fluent_bin-recycle-icon.png',
                      color: primaryColor),
                  const SizedBox(width: 12),
                  Text(
                    "Pilih Waktu Pengambilan",
                    style: AppStyles.boldStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            const Divider(),
            Expanded(
                child: ListView.builder(
                    itemCount: widget.times.length,
                    itemBuilder: (context, index) {
                      final time = widget.times[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          children: [
                            RadioListTile(
                                title: Text(time,
                                    style: AppStyles.descriptionStyle
                                        .copyWith(fontSize: 14)),
                                value: time,
                                groupValue: _selectedTime,
                                onChanged: (String? val) => setState(() {
                                      _selectedTime = val!;
                                    })),
                            const Divider()
                          ],
                        ),
                      );
                    })),
            Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 12, top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () =>
                          Navigator.pop(context, widget.currSelectedTime),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: Text(
                        "Batal",
                        style: AppStyles.descriptionStyle
                            .copyWith(color: Colors.white, fontSize: 14),
                      )),
                  const SizedBox(width: 12),
                  ElevatedButton(
                      onPressed: () => Navigator.pop(context, _selectedTime),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: Text(
                        "Selesai",
                        style: AppStyles.descriptionStyle
                            .copyWith(color: Colors.white, fontSize: 14),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
