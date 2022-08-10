import 'package:flutter/material.dart';
import 'package:task_02/compornents/commons/page_text.dart';

class APage extends StatelessWidget {
  final String textString;
  const APage({
    Key? key,
    required this.textString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A page'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: PageText(textString: textString),
      ),
    );
  }
}
