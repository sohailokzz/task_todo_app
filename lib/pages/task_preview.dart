import 'package:flutter/material.dart';
import 'package:task_todo_app/common/app_colors.dart';
import 'package:task_todo_app/common/reusable_appbar.dart';
import 'package:task_todo_app/common/reusable_heading_text.dart';

import '../common/reusable_list_tile.dart';

class TaskPreview extends StatelessWidget {
  final String task;
  final String type;
  final String priority;
  final String timeframe;
  final String description;
  const TaskPreview({
    super.key,
    required this.task,
    required this.type,
    required this.priority,
    required this.timeframe,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarySecondaryBackground,
      appBar: reusableAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ReusableHeadingText(text: 'Task Preview'),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0XFFEDF3FF),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.popUntil(
                          context,
                          (route) => route.isFirst,
                        );
                      },
                      icon: const Icon(
                        Icons.delete_outline_outlined,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              ReusableTile(
                title: 'Task',
                subTitle: task,
              ),
              const Divider(),
              ReusableTile(
                title: 'Type',
                subTitle: type,
              ),
              const Divider(),
              ReusableTile(
                title: 'Priority',
                subTitle: priority,
              ),
              const Divider(),
              ReusableTile(
                title: 'Timeframe',
                subTitle: timeframe,
              ),
              const Divider(),
              ReusableTile(
                title: 'Description',
                subTitle: description,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
