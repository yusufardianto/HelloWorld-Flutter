import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _text = "Ganjil";

  void _incrementCounter() {
    setState(() {
      _counter++;
      // if (_counter > 10) {
      //   _counter = 1;
      // }
      // Percobaan 2
      // if (_counter % 2 == 0) {
      //   _text = "Genap";
      // } else {
      //   _text = "Ganjil";
      // }
      //==================================================

      // if (_counter > 10) {
      //   _counter = 0;
      // }

      // _text = "Ganjil: ";
      // for (int i = 0; i <= _counter; i++) {
      //   if (i % 2 != 0) {
      //     _text += '${i}, ';
      //   }
      // }

      //====================================================
      // if (_counter > 100) {
      //   _counter = 0;
      // }

      // _text = "bilangan genap kelipatan 3 :";
      // for (int i = 1; i <= _counter; i++) {
      //   if (i % 2 == 0 && i % 3 == 0) {
      //     _text += '${i}, ';
      //   }
      // }

      //=====================================================
      if (_counter > 20) {
        _counter = 0;
      }
      _text = "Prima: ";
      for (int i = 2; i <= _counter; i++) {
        bool isPrime = true;
        if (i >= 2) {
          for (int j = 2; j <= i / 2; j++) {
            if (i % j == 0) {
              isPrime = false;
              break;
            }
          }
        }
        if (isPrime) {
          _text += "${i}, ";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
            Text(
              _text,
              style: Theme.of(context).textTheme.headline4,
            )
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
