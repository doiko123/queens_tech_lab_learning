import 'package:flutter/material.dart';
import 'package:task_02/components/commons/link_button.dart';
import 'package:task_02/components/commons/page_text.dart';
import 'package:task_02/components/commons/text_input_form.dart';
import 'package:task_02/screens/a_page.dart';
import 'package:task_02/screens/b_page.dart';
import 'package:task_02/utility/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Const.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: Const.topPage,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _textEditingController = TextEditingController();
  late String _textString = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          TextInputForm(
            textEditingController: _textEditingController,
            hintTextString: Const.pleaseEnterText,
          ),
          const SizedBox(
            height: 24,
          ),
          LinkButton(
            textString: Const.linkToAPage,
            onPressed: _showAPage,
          ),
          const SizedBox(
            height: 16,
          ),
          LinkButton(
            textString: Const.linkToBPage,
            onPressed: _showBPage,
          ),
          const SizedBox(
            height: 80,
          ),
          PageText(textString: _textString),
        ],
      ),
    );
  }

  void _showAPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => APage(
          textString: _textEditingController.text,
        ),
      ),
    );
  }

  Future<void> _showBPage() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const BPage(),
      ),
    ).then((result) {
      if (result.isNotEmpty) {
        setState(() => _textString = result['textString']);
      }
    });
  }
}
