import 'package:SpaceT/src/app/components/standard_bottom_navigation.dart';
import 'package:flutter/material.dart';

import '../../utils/export.dart';

class StandardPage extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget floatingActionButton;

  int _selectedIndex = 0;

  StandardPage(
      {required this.title,
      required this.body,
      required this.floatingActionButton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: AppPaddings.borderPadding,
            right: AppPaddings.borderPadding,
            top: AppPaddings.topPadding,
          ),
          child: SingleChildScrollView(child: body),
        ),
        floatingActionButton: floatingActionButton,
        bottomNavigationBar: StandardBottomNavigation());
  }
}
