import 'package:bentlos/Pages/homepage.dart';
import 'package:bentlos/Pages/profile.dart';
import 'package:bentlos/Pages/searchpage.dart';
import 'package:bentlos/Pages/setting.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetwhatever = <Widget>[
    const Homepage(),
    const SearchPage(),
    const Profile(),
    const Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color(0xffE7EFEC),
        indicatorColor: Colors.green[200],
        selectedIndex: _selectedIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        onDestinationSelected: (index) => _onItemTapped(index),
      ),
      body: _widgetwhatever[_selectedIndex],
    );
  }
}
