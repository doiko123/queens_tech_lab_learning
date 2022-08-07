import 'package:flutter/material.dart';

class APage extends StatelessWidget {
  const APage({Key? key}) : super(key: key);
  static const _titleText = 'Aページですねん';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_titleText),
      ),
      body: const Text(_titleText),
    );
  }
}
