import 'package:flutter/material.dart';

class TextInputForm extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintTextString;
  const TextInputForm({
    Key? key,
    required this.textEditingController,
    required this.hintTextString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintTextString,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 4.0,
          horizontal: 16.0,
        ),
      ),
    );
  }
}
