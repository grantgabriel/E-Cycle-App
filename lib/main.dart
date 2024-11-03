import 'package:e_cycle/screens/histori_transaksi/histori_transaksi.dart';
import 'package:e_cycle/constants/colors.dart';
import 'package:e_cycle/page/profile.dart';
import 'package:e_cycle/screens/profile/profile.dart';
import 'package:e_cycle/screens/splash.dart';
import 'package:e_cycle/screens/transactionHistory/transaction_history.dart';
import 'package:e_cycle/screens/withdraw/withdraw.dart';
import 'package:e_cycle/widgets/toggle_tabs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          "/": (context) => const Splash(),
          "/withdraw": (context) => const WithdrawPage(),
        },
    );
  }
}
