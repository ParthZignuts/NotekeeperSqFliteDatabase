import 'package:flutter/material.dart';
class customTextFormField extends StatelessWidget {
  String hintText;
  String labelText;
  TextEditingController controller;

  customTextFormField({required this.hintText, required this.labelText,required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: hintText,
        label: Text(labelText),
      ),
    );
  }
}
