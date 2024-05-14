import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?) validator;
  const CustomTextField(
      {super.key, required this.hintText, required this.controller, required this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        //padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Colors.black.withOpacity(0.1), // Border color with opacity
            width: 1.0,
          ),
        ),
        child: TextFormField(
          controller: controller,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.black.withOpacity(0.2)),
            border: OutlineInputBorder(
              borderSide:
              BorderSide.none,
              borderRadius: BorderRadius.circular(8.0),
            ),
            errorStyle: TextStyle(
              height: 0.01,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide.none,
              borderRadius: BorderRadius.circular(8.0),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 12),
          ),
          validator: validator,
        ),
      ),
    );
  }
}