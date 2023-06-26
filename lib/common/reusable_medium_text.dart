import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class ReusableMediumText extends StatelessWidget {
  final String text;
  final double fontSize;
  const ReusableMediumText({
    super.key,
    required this.text,
    this.fontSize = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        color: AppColors.primaryText,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
