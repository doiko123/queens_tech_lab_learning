import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String textString;
  final Icon icon;

  const ListItem({
    Key? key,
    required this.textString,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        8.0,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: Colors.grey,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(
              8.0,
            ),
            child: icon,
          ),
          const SizedBox(
            width: 16.0,
          ),
          Text(
            textString,
            style: const TextStyle(
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
