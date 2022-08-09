import 'package:flutter/material.dart';
import 'package:task_01/pages/a_page.dart';
import 'package:task_01/utility/services/common_actions.dart';

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  final CommonActions _commonActions = CommonActions();

  @override
  State<MyHomePage> createState() {
    _commonActions.showToastMsg(
      msgText: 'createStateしてます',
    );
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  final CommonActions _commonActions = CommonActions();
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _commonActions.showToastMsg(
        msgText: '＋がタップされたのでsetStateしてます',
      );
      _counter++;
    });
    nextpage();
  }

  void nextpage() async {
    // Aページへ遷移
    await Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) {
      return const APage();
    }));
  }

  @override
  void initState() {
    super.initState();
    _commonActions.showToastMsg(
      msgText: 'initStateしてます',
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _commonActions.showToastMsg(
      msgText: 'didChangeDependenciesしてます',
    );
  }

  @override
  Widget build(BuildContext context) {
    _commonActions.showToastMsg(
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
    _commonActions.showToastMsg(
      msgText: 'deactivateしてます',
    );
  }

  @override
  void dispose() {
    super.dispose();
    _commonActions.showToastMsg(
      msgText: 'disposeしてます',
    );
  }
}
