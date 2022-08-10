import 'package:flutter/material.dart';

class PageText extends StatelessWidget {
  final String textString;
  const PageText({
    Key? key,
    required this.textString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textString,
      style: const TextStyle(
        fontSize: 24,
        color: Colors.blue,
      ),
    );
  }
}
