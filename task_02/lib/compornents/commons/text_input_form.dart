import 'package:flutter/material.dart';

class TextInputForm extends StatelessWidget {
  final TextEditingController textEditingController;
  const TextInputForm({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      decoration: const InputDecoration(
        hintText: '好きな言葉を入力してね',
        contentPadding: EdgeInsets.symmetric(
          vertical: 4.0,
          horizontal: 16.0,
        ),
      ),
    );
  }
}
