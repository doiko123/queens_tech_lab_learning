import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task_01/pages/a_page.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() {
    Fluttertoast.showToast(
        msg: 'createStateしてます',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.lightBlue,
        textColor: Colors.white,
        fontSize: 14.0);
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      showToastMsg(
        msgText: '＋がタップされたのでsetStateしてます',
      );
      _counter++;
    });
    nextpage();
  }

  void nextpage() async {
    print('今からAページへ遷移しますよ');
    // Aページへ遷移
    await Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) {
      return const APage();
    }));
  }

  @override
  void initState() {
    super.initState();
    showToastMsg(
      msgText: 'initStateしてます',
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    showToastMsg(
      msgText: 'didChangeDependenciesしてます',
    );
  }

  @override
  Widget build(BuildContext context) {
    showToastMsg(
      msgText: 'buildしてます',
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    showToastMsg(
      msgText: 'deactivateしてます',
    );
  }

  @override
  void dispose() {
    super.dispose();
    showToastMsg(
      msgText: 'disposeしてます',
    );
  }

  // トーストmsgを表示する
  void showToastMsg({
    required String msgText,
  }) {
    Fluttertoast.showToast(
      msg: msgText,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.lightBlue,
      textColor: Colors.white,
      fontSize: 14.0,
    );
  }
}
