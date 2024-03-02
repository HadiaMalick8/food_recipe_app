import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.icon,
    required this.hintText,
    required this.color,
  });

  final IconData icon;
  final String hintText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          color: const Color(
            0xffC1C1C1,
          ),
          fontSize: 14,
        ),
        prefixIcon: Icon(
          icon,
          color: color,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: color,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: color,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}