import 'package:flutter/material.dart';
import 'home_page.dart';
import 'tips_page.dart';
import 'tasks_page.dart';
import 'progress_page.dart';
import 'notification_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Green Traveller',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage()
    );
  }
}
