import 'package:flutter/material.dart';

class BPage extends StatelessWidget {
  const BPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _textEditingController =
        TextEditingController();

    return WillPopScope(
      onWillPop: () {
        Navigator.pop(
          context,
          {
            'inputText': _textEditingController.text,
          },
        );
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('B Page'),
        ),
        body: TextFormField(
          controller: _textEditingController,
          decoration: const InputDecoration(
            hintText: '好きな言葉を入力してね',
            contentPadding: EdgeInsets.symmetric(
              vertical: 4.0,
              horizontal: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
