import 'package:e_cycle/constants/colors.dart';
import 'package:e_cycle/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  // Logic Splash Screen 5 seconds to Login Page
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const Login())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Justify between
          Image.asset('assets/images/ornamen_atas.png'),
          Image.asset('assets/images/logo.png', width: 150,),
          Image.asset('assets/images/ornamen_bawah.png'),
        ],
      )
    );
  }
}