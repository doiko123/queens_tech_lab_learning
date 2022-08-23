import 'package:flutter/material.dart';
import 'package:task_03/pages/home_page.dart';
import 'package:task_03/utility/const/text_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TextString.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(
        title: TextString.homePageTitle,
      ),
    );
  }
}
