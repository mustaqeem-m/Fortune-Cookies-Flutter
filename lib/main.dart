import 'package:flutter/material.dart';
import "dart:math";

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;
  String _currentFortune = "";

  final _fortuneList = [
    "Better luck tomorrow.",
    "Have a nice day.",
    "Better days are ahead.",
    "You’ll find a treasure today.",
    "Something you lost will return.",
    "An old friend will contact you soon.",
    "You are capable of amazing things.",
    "Success is just around the corner.",
    "Your hard work will pay off soon.",
    "Trust your instincts today.",
    "A surprise awaits you tonight.",
    "Dream big — it's almost time.",
    "Love will find you unexpectedly.",
    "You are wiser than you think.",
    "Adventure is calling — pick up.",
    "Your energy is magnetic today.",
    "Expect the unexpected.",
    "Luck is preparing a visit.",
    "Speak less. Listen more.",
    "You are the storm, not the breeze.",
    "Everything you need is within you.",
    "Joy is hidden in the little things.",
    "You will inspire someone today.",
    "You are aligned with your purpose.",
    "A new opportunity is forming silently.",
    "Healing is happening behind the scenes.",
    "Your silence will speak volumes today.",
    "Let go of control — flow will find you.",
    "Take the leap — the net will appear.",
    "Greatness doesn’t rush — you're on time.",
    "Your intuition already knows the way.",
    "Today is a portal — walk boldly.",
    "Your path is protected by unseen hands.",
    "A hidden gift is wrapped in delay.",
    "You're not behind — you're in incubation.",
    "Balance will find you when you breathe.",
    "Even shadows are proof of light.",
    "You’re building something eternal.",
    "Peace begins in your pause.",
    "Doubt dies in disciplined action.",
  ];

  void _randomFortune() {
    var random = Random();
    int fortune = random.nextInt(_fortuneList.length);
    setState(() {
      _currentFortune = _fortuneList[fortune];
    });
    print(_currentFortune);
  }

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
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
                  _currentFortune,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _randomFortune,
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
