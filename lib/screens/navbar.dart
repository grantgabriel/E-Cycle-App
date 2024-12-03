import 'package:e_cycle/screens/scan/scan.dart';
import 'package:e_cycle/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:e_cycle/constants/colors.dart';
import 'package:e_cycle/screens/home.dart';
import 'transactionHistory/transaction_history.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  late List<Widget> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      const Home(),
      const TransactionHistory(),
      const Scan(),
      const Home(),
      const ProfilePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _pages,
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style15, // Gaya Style15
      onItemSelected: (index) {
        setState(() {
          _selectedPageIndex = index;
        });
      },
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home, size: 32),
        title: "Beranda",
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.history, size: 32),
        title: "Histori",
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.camera_alt_outlined,
          size: 32,
          color: Colors.white,
        ), // Ukuran ikon lebih besar
        title: "E-Scan",
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.document_scanner_outlined, size: 32),
        title: "Tugas",
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person, size: 32),
        title: "Profil",
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }
}
