import 'package:SpaceT/src/app/modules/intro_page/intro_page.dart';
import 'package:flutter/material.dart';

class SpaceT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(),
      )),
      home: IntroPage(),
    );
  }
}
