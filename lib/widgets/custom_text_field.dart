import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.maxLines = 1,
    required this.hintText,
    this.keyboardType,
    this.valid,
  });

  final TextEditingController controller;
  final int? maxLines;
  final String hintText;
  final TextInputType? keyboardType;
  final Function(String?)? valid;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      validator: (v) {
        valid!(v);
      },
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16),
        filled: true,
        focusedBorder: getInputBorder,
        enabledBorder: getInputBorder,
        border: getInputBorder,
        hintText: hintText,
        hintStyle: TextStyle(color: CustomColor.hintDark),
        fillColor: CustomColor.whiteSecondary,
      ),
      cursorColor: CustomColor.scaffoldBg,
      style: TextStyle(color: CustomColor.bgLight1),
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(10),
    );
  }
}
