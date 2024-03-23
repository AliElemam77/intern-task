import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, this.label, this.suffixIcon, this.maxLines});
  String? label;
  Widget? suffixIcon;
  int? maxLines;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 350,
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          labelText: label,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
