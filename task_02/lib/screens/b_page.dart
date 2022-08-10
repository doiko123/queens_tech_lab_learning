import 'package:flutter/material.dart';
import 'package:task_02/compornents/commons/text_input_form.dart';

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
        body: TextInputForm(
          textEditingController: _textEditingController,
        ),
      ),
    );
  }
}
