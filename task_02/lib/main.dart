import 'package:flutter/material.dart';
import 'package:task_02/compornents/commons/text_input_form.dart';
import 'package:task_02/screens/a_page.dart';
import 'package:task_02/screens/b_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Top Page'),
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
  late String _pageText = '';

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
          ),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
            onPressed: () => _showAPage(),
            child: const Text('A PageへGO'),
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlue,
              onPrimary: Colors.white,
              shape: const StadiumBorder(),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () => _showBPage(),
            child: const Text('B PageへGO'),
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlue,
              onPrimary: Colors.white,
              shape: const StadiumBorder(),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            _pageText,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  void _showAPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => APage(
          pageText: _textEditingController.text,
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
        setState(() {
          _pageText = result['inputText'];
        });
      }
    });
  }
}
