import 'package:flutter/material.dart';
import 'package:task_todo_app/pages/add_new_task.dart';
import 'package:task_todo_app/pages/task_list_page.dart';
import 'package:task_todo_app/routes/route_names.dart';

import '../pages/home_page.dart';

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.homePage:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomePage(),
        );

      case RoutesName.taskListPage:
        return MaterialPageRoute(
          builder: (BuildContext context) => const TasksList(),
        );

      case RoutesName.addNewTask:
        return MaterialPageRoute(
          builder: (BuildContext context) => const AddNewTask(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text('No Route Selected'),
              ),
            );
          },
        );
    }
  }
}
