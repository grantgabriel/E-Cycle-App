import 'package:flutter/material.dart';
import 'package:e_cycle/screens/withdraw/tabs/withdraw_detail_page.dart';

class WithdrawMoneyTab extends StatelessWidget {
  const WithdrawMoneyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              'Tukar point-mu menjadi saldo untukmu',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 16.0),
          // Kategori Tukar ke E-wallet
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              'Tukar ke E-wallet',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildEwalletItem(context, label: 'Dana', icon: Icons.wallet),
              _buildEwalletItem(context,
                  label: 'Gopay', icon: Icons.account_balance_wallet),
              _buildEwalletItem(context,
                  label: 'OVO', icon: Icons.mobile_friendly),
            ],
          ),
          SizedBox(height: 16.0),
          Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      _buildBankItem(
                        context,
                        icon: Icons.account_balance,
                        label: 'BNI',
                      ),
                      SizedBox(width: 16.0),
                      _buildBankItem(
                        context,
                        icon: Icons.account_balance_wallet,
                        label: 'Mandiri',
                      ),
                      SizedBox(width: 16.0),
                      _buildBankItem(
                        context,
                        icon: Icons.account_balance,
                        label: 'BRI',
                      ),
                      SizedBox(width: 16.0),
                      _buildBankItem(
                        context,
                        icon: Icons.account_balance,
                        label: 'BTN',
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    children: [
                      _buildBankItem(
                        context,
                        icon: Icons.account_balance,
                        label: 'BSI',
                      ),
                      SizedBox(width: 16.0),
                      _buildBankItem(
                        context,
                        icon: Icons.account_balance,
                        label: 'BCA',
                      ),
                      SizedBox(width: 16.0),
                      _buildBankItem(
                        context,
                        icon: Icons.account_balance,
                        label: 'SeaBank',
                      ),
                      SizedBox(width: 16.0),
                      _buildBankItem(
                        context,
                        icon: Icons.more_horiz,
                        label: 'Lainnya',
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget _buildEwalletItem(BuildContext context,
      {required String label, required IconData icon}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WithdrawDetailPage()),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min, // Membatasi tinggi agar sesuai konten
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[200],
            child: Icon(icon, size: 28, color: Colors.blue),
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildBankItem(BuildContext context,
      {required IconData icon, required String label}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WithdrawDetailPage()),
        );
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[200],
            child: Icon(icon, size: 28, color: Colors.blue),
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
