import 'package:e_cycle/constants/app_styles.dart';
import 'package:e_cycle/constants/colors.dart';
import 'package:flutter/material.dart';

class SelectWasteTypeModal extends StatefulWidget {
  final List<String> items;
  final List<String> itemsIcon;
  final List<String> currSelected;

  const SelectWasteTypeModal(
      {super.key,
      required this.items,
      required this.itemsIcon,
      required this.currSelected});

  @override
  State<SelectWasteTypeModal> createState() => _SelectWasteTypeModalState();
}

class _SelectWasteTypeModalState extends State<SelectWasteTypeModal> {
  final List<String> _selectedItems = [];

  @override
  void initState() {
    super.initState();
    _selectedItems.addAll(widget.currSelected);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 200, maxHeight: 555),
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
                    "Pilih Jenis Sampahmu",
                    style: AppStyles.boldStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            const Divider(),
            Expanded(
                child: ListView.builder(
                    itemCount: widget.items.length,
                    itemBuilder: (context, index) {
                      final item = widget.items[index];
                      final icon = widget.itemsIcon[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            CheckboxListTile(
                              title: Row(
                                children: [
                                  Image.asset('assets/images/$icon',
                                      color: primaryColor),
                                  const SizedBox(width: 14),
                                  Text(
                                    item,
                                    style: AppStyles.descriptionStyle
                                        .copyWith(fontSize: 14),
                                  ),
                                ],
                              ),
                              value: _selectedItems.contains(item),
                              onChanged: (bool? selected) => setState(() {
                                if (selected == true) {
                                  _selectedItems.add(item);
                                } else {
                                  _selectedItems.remove(item);
                                }
                              }),
                            ),
                            const Divider()
                          ],
                        ),
                      );
                    })),
            ElevatedButton(
                onPressed: () => Navigator.pop(context, _selectedItems),
                style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    fixedSize: const Size(270, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    )),
                child: Text(
                  "Lanjutkan",
                  style:
                      AppStyles.descriptionStyle.copyWith(color: Colors.white),
                )),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }
}
