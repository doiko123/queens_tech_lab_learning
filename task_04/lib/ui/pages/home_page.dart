import 'package:flutter/material.dart';
import 'package:task_04/ui/components/event_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // TODO(doiko): keywordをフォームに入力できるようにしてそれを元にAPIを叩き、結果を表示できるようにする
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 16,
            right: 24,
            left: 24,
          ),
          child: EventList(),
        ),
      ),
    );
  }
}
