import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class ReusableNormalText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  const ReusableNormalText({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.color = AppColors.greyText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
