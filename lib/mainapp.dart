import 'package:flutter/material.dart';
import 'package:nti_task_2/pages_task2/login.dart';
import 'package:nti_task_2/pages_task2/signup.dart';
import 'package:nti_task_2/pages_task2/welcome.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "MyNewFont"),
      initialRoute: "/",
      routes: {
        "/": (context) => Welcome(),
        "/login": (context) => Login(),
        "/signup": (context) => Signup(),
      },
    );
  }
}
