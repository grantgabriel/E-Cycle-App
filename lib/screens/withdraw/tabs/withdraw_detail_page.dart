import 'package:flutter/material.dart';

class WithdrawDetailPage extends StatefulWidget {
  @override
  _WithdrawPageState createState() => _WithdrawPageState();
}

class _WithdrawPageState extends State<WithdrawDetailPage> {
  final TextEditingController _amountController = TextEditingController();
  int points = 99999; // Jumlah poin pengguna
  int? exchangedAmount; // Nominal yang akan ditukar

  @override
  void initState() {
    super.initState();

    // Tambahkan listener untuk mendengarkan perubahan input
    _amountController.addListener(() {
      final inputAmount = int.tryParse(_amountController.text);
      if (inputAmount != null && inputAmount > 0) {
        setState(() {
          exchangedAmount = inputAmount * 1000; // Kalkulasi jumlah nominal
        });
      } else {
        setState(() {
          exchangedAmount = null; // Reset jika input tidak valid
        });
      }
    });
  }

  @override
  void dispose() {
    _amountController.dispose(); // Bersihkan controller
    super.dispose();
  }

  void _showLoadingPopup() {
    showDialog(
      context: context,
      barrierDismissible: false, // Tidak bisa ditutup dengan tap di luar
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: SizedBox(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.send, size: 40, color: Colors.green),
                SizedBox(height: 16),
                Text("Menukar...", style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        );
      },
    );

    // Setelah 1 detik, ganti dengan pop-up sukses
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pop(context); // Tutup pop-up loading
      _showSuccessPopup(); // Tampilkan pop-up sukses
    });
  }

  void _showSuccessPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: SizedBox(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_circle, size: 40, color: Colors.green),
                SizedBox(height: 16),
                Text("Berhasil!", style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        );
      },
    );
  }

  void _onExchange() {
    final inputAmount = int.tryParse(_amountController.text);
    if (inputAmount != null && inputAmount > 0 && inputAmount <= points) {
      setState(() {
        points -= inputAmount; // Kurangi poin pengguna
      });
      _showLoadingPopup(); // Tampilkan pop-up loading
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Masukkan jumlah poin yang valid!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Withdraw"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tukar ke Bank",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Silahkan masukkan jumlah yang ingin ditukar",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Masukkan jumlah yang ingin ditukar",
                prefixIcon: Icon(Icons.monetization_on, color: Colors.orange),
                suffixIcon: Icon(Icons.arrow_drop_down, color: Colors.green),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 8),
            Text("Point kamu: ${points.toString()}",
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            if (exchangedAmount != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(),
                  Text(
                    "Jumlah yang ditukar",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Rp ${exchangedAmount!.toString()}",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            Spacer(),
            ElevatedButton(
              onPressed: _onExchange,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "Tukar",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
