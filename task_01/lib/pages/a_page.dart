import 'package:flutter/material.dart';

class APage extends StatelessWidget {
  final String titleText;
  const APage({
    Key? key,
    this.titleText = 'Aページですねん',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleText),
      ),
      body: Text(titleText),
    );
  }
}
