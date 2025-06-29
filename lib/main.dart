import 'package:flutter/material.dart';
import "dart:math";
import "package:provider/provider.dart";
import 'package:fortune_cookie/Providers/FortuneModel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Fortunemodel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:
          MyHomePage(), //! here we add the child widget ...home: is the entry screen of your app (like <App /> in React). You can plug in any custom widget here (e.g., HomePage(), LoginScreen(), etc.).
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final int _counter = 0;
  final String _currentFortune = "";

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final fortune = Provider.of<Fortunemodel>(context);
    // print("New Build with latest current_fortune :  $_currentFortune");
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/fortune_cookie.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  fortune.currentFortune,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => {fortune.getNewFortune()},
              child: Text("Click me to See your fortune !"),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _randomFortune,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
