import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_todo_app/common/text_field_decoration.dart';

class ReusableTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Function(String) onChange;
  const ReusableTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(10),
      child: TextField(
        controller: controller,
        onChanged: (value) {
          onChange(value);
        },
        decoration: kTextFieldDecoration.copyWith(
          hintText: 'text',
          hintStyle: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
