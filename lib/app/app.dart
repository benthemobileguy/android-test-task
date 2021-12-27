import 'package:android_test_task/presentation/resources/routes-manager.dart';
import 'package:android_test_task/presentation/resources/theme-manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); // private named constructor
  static final MyApp instance =
  MyApp._internal(); // single instance -- singleton

  factory MyApp() => instance; // factory for the class instance

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.menuRoute,
      theme: getApplicationTheme(),
    );
  }
}