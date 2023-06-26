import 'package:flutter/material.dart';
import 'package:task_todo_app/common/app_colors.dart';
import 'package:task_todo_app/common/reusable_heading_text.dart';
import 'package:task_todo_app/common/reusable_normal_text.dart';
import 'package:task_todo_app/common/spacing.dart';
import 'package:task_todo_app/pages/task_preview.dart';

import '../common/data/data.dart';
import '../common/reusable_appbar.dart';
import '../common/reusable_medium_text.dart';
import '../routes/route_names.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarySecondaryBackground,
      appBar: reusableAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableHeadingText(
                      text: 'Tasks',
                    ),
                    ReusableNormalText(
                      text: '6 Tasks',
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      RoutesName.addNewTask,
                    );
                  },
                  icon: const Icon(
                    Icons.add_circle,
                    size: 48,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
            24.myPh,
            Expanded(
              child: ListView.builder(
                itemCount: dataList.length,
                itemBuilder: (context, index) {
                  Map allDataList = dataList[index];
                  return Card(
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
                        padding: const EdgeInsets.only(left: 8),
                        child: Center(
                          child: ListTile(
                            trailing: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TaskPreview(
                                      task: allDataList['title'],
                                      type: allDataList['type'],
                                      priority: allDataList['priority'],
                                      timeframe: allDataList['timeframe'],
                                      description: allDataList['description'],
                                    ),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            title: ReusableMediumText(
                              fontSize: 20,
                              text: allDataList['title'],
                            ),
                            subtitle: ReusableNormalText(
                              text: allDataList['timeframe'],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
