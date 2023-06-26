import 'package:flutter/material.dart';
import 'package:task_todo_app/common/app_colors.dart';
import 'package:task_todo_app/common/spacing.dart';

import '../common/reusable_heading_text.dart';
import '../common/reusable_medium_text.dart';
import '../common/reusable_normal_text.dart';
import '../routes/route_names.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarySecondaryBackground,
      body: Padding(
        padding: const EdgeInsets.all(
          12.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            36.myPh,
            const ReusableHeadingText(
              text: 'Sample App',
            ),
            16.myPh,
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 2,
              child: Container(
                height: 96,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFFFFFF),
                      Color(0XFFEDF3FF),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/tasks.png',
                        height: 32,
                        width: 32,
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            RoutesName.taskListPage,
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      title: const ReusableMediumText(
                        text: 'Tasks',
                      ),
                      subtitle: const ReusableNormalText(
                        text: '6 Tasks',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
