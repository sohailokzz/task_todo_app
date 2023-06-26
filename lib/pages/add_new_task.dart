import 'package:flutter/material.dart';
import 'package:task_todo_app/common/app_colors.dart';
import 'package:task_todo_app/common/reusable_appbar.dart';
import 'package:task_todo_app/common/reusable_button.dart';
import 'package:task_todo_app/common/reusable_medium_text.dart';
import 'package:task_todo_app/common/reusable_textfield.dart';
import 'package:task_todo_app/common/spacing.dart';
import 'package:task_todo_app/common/text_field_decoration.dart';
import 'package:task_todo_app/pages/task_preview.dart';
import '../common/drop_down_menu.dart';
import '../common/reusable_heading_text.dart';

class AddNewTask extends StatefulWidget {
  const AddNewTask({super.key});

  @override
  State<AddNewTask> createState() => _AddNewTaskState();
}

class _AddNewTaskState extends State<AddNewTask> {
  late TextEditingController taskController;
  late TextEditingController descriptionController;

  @override
  void initState() {
    taskController = TextEditingController();
    descriptionController = TextEditingController();
    super.initState();
  }

  String? type;
  String? priority;
  String? timeFrame;
  bool isTextEmpty = true;

  @override
  void dispose() {
    taskController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarySecondaryBackground,
      appBar: reusableAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ReusableHeadingText(
                text: 'New Tasks',
              ),
              12.myPh,
              const ReusableMediumText(
                text: 'Task',
                fontSize: 18,
              ),
              4.myPh,
              ReusableTextField(
                controller: taskController,
                hintText: 'text',
                onChange: (value) {
                  setState(() {
                    if (value.isEmpty) {
                      isTextEmpty = true;
                    } else {
                      isTextEmpty = false;
                    }
                  });
                },
              ),
              12.myPh,
              const ReusableMediumText(
                text: 'Type',
                fontSize: 18,
              ),
              4.myPh,
              AppDropdownInput(
                hintText: "Choose Type",
                options: const ["Work", "Personal project", "Self"],
                value: type,
                onChanged: (String? value) {
                  setState(() {
                    type = value;
                  });
                },
                getLabel: (String value) => value,
              ),
              12.myPh,
              const ReusableMediumText(
                text: 'Priority',
                fontSize: 18,
              ),
              4.myPh,
              AppDropdownInput(
                hintText: "Choose Type",
                options: const ["Needs Done", "Nice to have ", "Nice idea"],
                value: priority,
                onChanged: (String? value) {
                  setState(() {
                    priority = value;
                  });
                },
                getLabel: (String value) => value,
              ),
              12.myPh,
              const ReusableMediumText(
                text: 'Time Frame',
                fontSize: 18,
              ),
              4.myPh,
              AppDropdownInput(
                hintText: "Choose Time",
                options: const [
                  "None",
                  "Today",
                  "3 days",
                  "Week",
                  "Fortnight",
                  "Month",
                  "90 days",
                  "Year",
                ],
                value: timeFrame,
                onChanged: (String? value) {
                  setState(() {
                    timeFrame = value;
                  });
                },
                getLabel: (String value) => value,
              ),
              12.myPh,
              const ReusableMediumText(
                text: 'Description',
                fontSize: 18,
              ),
              4.myPh,
              Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(10),
                child: TextField(
                  controller: descriptionController,
                  onChanged: (value) {
                    setState(() {
                      if (value.isEmpty) {
                        isTextEmpty = true;
                      } else {
                        isTextEmpty = false;
                      }
                    });
                  },
                  maxLines: 5,
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: '',
                  ),
                ),
              ),
              24.myPh,
              ReusableButton(
                color:
                    isTextEmpty ? AppColors.greyButton : AppColors.primaryColor,
                buttonTitle: 'Submit',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TaskPreview(
                        task: taskController.text,
                        type: type!,
                        priority: priority!,
                        timeframe: timeFrame!,
                        description: descriptionController.text,
                      ),
                    ),
                  );
                },
              ),
              12.myPh,
            ],
          ),
        ),
      ),
    );
  }
}
