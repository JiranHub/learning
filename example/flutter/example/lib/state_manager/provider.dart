

import 'package:flutter/material.dart';

class MyModel{
  int _counter = 0;
}

class MyViewModel extends ChangeNotifier{
  late MyModel _model;

  set model(MyModel model) {
    _model=model;
    notifyListeners();
  }

  MyModel get getModel {
    return _model;
  }
}

class ProviderPage extends StatefulWidget {
  const ProviderPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ProviderPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ProviderPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // var cart = Provider.of<MyViewModel>(context, listen: true);
    // var cart = context.watch<CartModel>();

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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
