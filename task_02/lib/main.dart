import 'package:flutter/material.dart';
import 'package:task_02/screens/a_page.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: _textEditingController,
            decoration: const InputDecoration(
              hintText: '好きな言葉を入力してね',
              contentPadding: EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 16.0,
              ),
            ),
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
          )
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
}
