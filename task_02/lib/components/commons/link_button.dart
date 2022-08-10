import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final String buttonText;
  final Function() onPressed;
  const LinkButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonText),
      style: ElevatedButton.styleFrom(
        primary: Colors.lightBlue,
        onPrimary: Colors.white,
        shape: const StadiumBorder(),
      ),
    );
  }
}
