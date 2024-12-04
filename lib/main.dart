import 'package:e_cycle/constants/colors.dart';
import 'package:e_cycle/screens/home.dart';
// import 'package:e_cycle/screens/profile/Peringkat/leaderboard.dart';
import 'package:e_cycle/screens/profile/Peringkat/national.dart';
import 'package:e_cycle/screens/profile/profile.dart';
import 'package:e_cycle/screens/splash.dart';
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
        // fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      home: const Splash(),
    );
  }
}
