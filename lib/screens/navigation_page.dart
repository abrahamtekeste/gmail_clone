import 'package:flutter/material.dart';
import 'package:gmail_clone/screens/home_page.dart';
import 'package:gmail_clone/widgets/custom_tab_bar.dart';

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomePage(),
    Scaffold(
      body: Center(
        child: Text(
          'Another page',
          style: TextStyle(fontSize: 26),
        ),
      ),
    ),
  ];

  final List<IconData> _icons = const [
    Icons.mail,
    Icons.videocam_outlined,
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(bottom: 12.0),
          color: Colors.white,
          child: CustomTabBar(
            icons: _icons,
            selectedIndex: _selectedIndex,
            onTap: (index) => setState(() => _selectedIndex = index),
          ),
        ),
      ),
    );
  }
}
