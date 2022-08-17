import 'package:flutter/material.dart';
import 'package:task_02/components/commons/text_input_form.dart';
import 'package:task_02/utility/const/text_string.dart';

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
            'textString': _textEditingController.text,
          },
        );
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(TextString.bPage),
        ),
        body: TextInputForm(
          textEditingController: _textEditingController,
          hintTextString: TextString.pleaseEnterText,
        ),
      ),
    );
  }
}
