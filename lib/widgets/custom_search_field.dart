import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final IconData icon;
  final VoidCallback onPressed;

  const CustomSearchField({
    Key? key,
    this.controller,
    required this.hintText,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
            color: Colors.black.withOpacity(0.1), // Border color with opacity
            width: 1.0,
          ),
        ),
        child: TextField(
          controller: controller,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            suffixIcon: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff2517FF),
                    Color(0xff5298F0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                icon: Icon(icon, color: Colors.white),
                onPressed: onPressed,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          ),
        ),
      ),
    );
  }
}