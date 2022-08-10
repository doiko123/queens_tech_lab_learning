import 'package:flutter/material.dart';

class APage extends StatelessWidget {
  const APage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String _titleText = 'Aページですねん';
    return Scaffold(
      appBar: AppBar(
        title: const Text(_titleText),
      ),
      body: const Text(_titleText),
    );
  }
}
