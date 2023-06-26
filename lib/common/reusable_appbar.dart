import 'package:flutter/material.dart';
import 'app_colors.dart';

AppBar reusableAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: AppColors.primarySecondaryBackground,
    elevation: 0,
    leading: IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: const Icon(
        Icons.arrow_back_ios,
        color: AppColors.primaryColor,
      ),
    ),
  );
}
