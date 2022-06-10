import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/export.dart';

class StandardForm extends StatelessWidget {
  final String label;
  StandardForm({required this.label});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text(label),
      ),
    );
  }
}
