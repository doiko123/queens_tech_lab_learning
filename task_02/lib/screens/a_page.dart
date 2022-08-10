import 'package:flutter/material.dart';

class APage extends StatelessWidget {
  final String pageText;
  const APage({
    Key? key,
    required this.pageText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A page'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          pageText,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
