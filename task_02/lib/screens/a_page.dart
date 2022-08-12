import 'package:flutter/material.dart';
import 'package:task_02/components/commons/page_text.dart';
import 'package:task_02/utility/const.dart';

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
        title: const Text(Const.aPage),
      ),
      body: Container(
        alignment: Alignment.center,
        child: PageText(textString: textString),
      ),
    );
  }
}
