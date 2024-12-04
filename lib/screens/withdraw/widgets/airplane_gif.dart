import 'dart:async';

import 'package:flutter/material.dart';

class AirplaneGif extends StatefulWidget {
  @override
  _AirplaneGifState createState() => _AirplaneGifState();
}

class _AirplaneGifState extends State<AirplaneGif> {
  int _currentIndex = 0; // Index gambar saat ini
  final List<String> _images = [
    'assets/images/airplanegif_1.png',
    'assets/images/airplanegif_2.png',
    'assets/images/airplanegif_3.png',
  ]; // Ganti dengan path gambar Anda
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    // Mengatur timer untuk mengganti gambar
    _timer = Timer.periodic(Duration(milliseconds: 300), (timer) {
      if (mounted) {
        setState(() {
          _currentIndex = (_currentIndex + 1) % _images.length;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 150),
        transitionBuilder: (child, animation) => FadeTransition(
          opacity: animation,
          child: child,
        ),
        child: Image.asset(
          _images[_currentIndex],
          key: ValueKey<int>(_currentIndex), // Unik untuk setiap gambar
        ),
      ),
    );
  }
}
