import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WithdrawInputfield extends StatefulWidget {
  @override
  _WithdrawInputfieldState createState() => _WithdrawInputfieldState();
}

class _WithdrawInputfieldState extends State<WithdrawInputfield> {
  // Item yang dipilih
  String selectedItem = 'IDR';
  final TextEditingController _controller = TextEditingController();
  final NumberFormat _numberFormat = NumberFormat.decimalPattern('id');
  // Map untuk ikon berdasarkan item
  final Map<String, String> itemIcons = {
    'IDR': 'assets/images/withdraw_idr.png', // Ganti dengan path gambar IDR
    'Coin': 'assets/images/coin.png', // Ganti dengan path gambar Coin
  };

  @override
  void initState() {
    super.initState();
    _controller.addListener(_formatNumber);
  }

  void _formatNumber() {
    final text = _controller.text.replaceAll('.', ''); // Hapus pemisah ribuan
    if (text.isNotEmpty) {
      final number = int.parse(text); // Konversi ke int
      _controller.value = TextEditingValue(
        text: _numberFormat.format(number),
        selection: TextSelection.collapsed(
            offset: _numberFormat.format(number).length),
      );
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_formatNumber);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 372,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5.1,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Masukkan jumlah',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                ),
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 9),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          // Dropdown
          DropdownButton<String>(
            value: selectedItem,
            items: itemIcons.keys.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Row(
                  children: [
                    Image.asset(
                      itemIcons[value]!,
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 8),
                    Text(value),
                  ],
                ),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                selectedItem = newValue!;
              });
            },
            underline: SizedBox(), // Menghilangkan garis bawah
          ),
        ],
      ),
    );
  }
}
