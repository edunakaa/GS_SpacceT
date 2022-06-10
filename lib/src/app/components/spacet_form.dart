import 'package:flutter/material.dart';

class EduardoForm extends StatelessWidget {
  final String label;
  final Function()? onEditingComplete;
  final TextEditingController? userInputController;
  final FocusNode? focuNode;

  EduardoForm(
      {required this.label,
      this.userInputController,
      this.onEditingComplete,
      this.focuNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focuNode,
      onEditingComplete: onEditingComplete,
      controller: userInputController,
      decoration: InputDecoration(
        label: Text(label),
      ),
    );
  }
}
