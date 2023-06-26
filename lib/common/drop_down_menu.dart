import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_todo_app/common/app_colors.dart';
import 'package:task_todo_app/common/text_field_decoration.dart';

class AppDropdownInput<T> extends StatelessWidget {
  final String hintText;
  final List<T> options;
  final T? value;
  final String Function(T) getLabel;
  final void Function(T?)? onChanged;

  const AppDropdownInput({
    super.key,
    this.hintText = 'Please select an Option',
    this.options = const [],
    required this.getLabel,
    this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(12),
      child: FormField<T>(
        builder: (FormFieldState<T> state) {
          return InputDecorator(
            decoration: kTextFieldDecoration.copyWith(
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            isEmpty: value == null || value == '',
            child: DropdownButtonHideUnderline(
              child: DropdownButton<T>(
                iconDisabledColor: AppColors.primaryColor,
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                ),
                value: value,
                isDense: true,
                isExpanded: true,
                onChanged: onChanged!,
                items: options.map(
                  (T value) {
                    return DropdownMenuItem<T>(
                      value: value,
                      child: Text(
                        getLabel(value),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
