import 'package:flutter/material.dart';
import 'package:task_todo_app/routes/route_names.dart';
import 'package:task_todo_app/routes/routes.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Task Todo App',
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.homePage,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
