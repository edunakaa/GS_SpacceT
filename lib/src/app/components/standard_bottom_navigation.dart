import 'package:SpaceT/src/app/modules/analytic_page/analytic_page.dart';
import 'package:SpaceT/src/app/modules/painel_page/painel_page.dart';
import 'package:flutter/material.dart';

class StandardBottomNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StandardBottomNavigationState();
  }
}

class _StandardBottomNavigationState extends State<StandardBottomNavigation> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AnalyticPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PainelPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart_rounded),
          label: '',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.arrow_drop_up_outlined), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner_rounded), label: ''),
      ],
    );
  }
}
