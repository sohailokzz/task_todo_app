import 'package:flutter/material.dart';
import 'package:task_todo_app/common/reusable_normal_text.dart';

class ReusableTile extends StatelessWidget {
  final String title;
  final String subTitle;
  const ReusableTile({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: ReusableNormalText(
        text: title,
        fontSize: 18,
      ),
      subtitle: ReusableNormalText(
        text: subTitle,
        fontSize: 20,
        color: Colors.black,
      ),
    );
  }
}
