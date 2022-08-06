import 'package:flutter/material.dart';

class APage extends StatelessWidget {
  const APage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aページですねん'),
      ),
      body: const Text('Aページですねん'),
    );
  }
}
