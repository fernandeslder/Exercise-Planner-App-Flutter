import 'package:flutter/material.dart';
import 'package:exercise_planner_flutter/screens/exercise_list.dart';
import 'package:exercise_planner_flutter/screens/exercise_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exercise Planner App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ExerciseList(),
    );
  }
}
