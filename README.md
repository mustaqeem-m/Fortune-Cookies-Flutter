# fortune_cookie

# setState() ?

- Its a flutter method that tells the framework
  " Hey i've changed some data - so rebuild the UI with new values"

- it triggers the build() method of current State class.

# 🧠 Why Is It Needed?

- Flutter UIs are reactive — they depend on state variables.
- Just changing a variable (like counter++) won’t update the UI unless you notify Flutter.

- So, you wrap that change in setState() to say:

“Yo Flutter, re-render this widget with updated values!”

used only inside the state class of a statefulWidget

Warning: Cannot use setState() in a statelessWidget

# used to update :

- Counters

- Visibility

- List items

- Theme toggles

- Any dynamic UI content

# 🧠 Best Practice:

Keep `setState()` tight and clean. Don’t put async operations or business logic inside it.

# Finally :

"`setState()` in Flutter is the bridge between state change and UI re-render. Without it, the widget tree doesn’t react — it just stares at stale data."

# Widget

- widget is a building block of Flutter UI.
- EveryThing we see in a Flutter app - text, buttons, images, rows ,padding, even the entire app itself -- is a widget.
- Flutter builds a widget tree => a structure of nested widget
- widgets are objects which defines the structural and visual element of flutter appication

`Widgets in Flutter are declarative UI units , we don't draw the UI -- we describe it with widgets, and flutter takes care of rendering`

## Types of widget :

- StatelessWidget - Immutable.Doesn't change over time => Text, icon, container
  - doesn't have state means they cannot change they properties or appearence once they've created . -> eg. Text, IconButton  etc.
- StatefulWidget - Can change based on interaction or data => textFeild, CheckBox,custom counters -> eg. input,dataChanges etc.
  - thes widgets can change over time , means they mutable state properties , modified | changed which causes the widget to rebuild and reflect those changes.
  - 1. initial state => assume counter as eg. ,widget state-counter = 0
  - 2. user Interaction(button-click) => call -> increment() => setState({}) -> counter ++ 1;
  - 3. widget marked here as dirty -> “Dirty” means: “Hey, something changed here. Rebuild this widget only.” -> means that flutter will know that in this dirty widget something has happened -> so there's a change was triggered
  - 4. Flutter rebuild that widget only that affected parts are rerendered
  - 5. new state is rendered -> counter is now 1 -> thats what shown in UI

# scaffold ?

- scaffold is like a layout shell for one screen|page inside the app.

# Add image procedure

- create a root folder asset => images => eg.image.png
- pubspec.yaml => here, we're going to specify all the thigs that govern our application.

# pubspec.yaml

- heart of flutter project
- Tells Flutter
  - what packages to fetch
  - what assets to include (images, fonts, etc.)
  - App name, version, environment(SDK version)

# Widget Hierarchy ?
- It's how the widgets are nested inside each other to build the UI - like Boxes inside Boxes (refer photo)
- Parent widget gives structure ➜ child widgets define content/behaviour
- Basic widget hierarchy eg.
- MaterialApp
└── Scaffold
    ├── AppBar
    └── Body: Center
        └── Column
            ├── Text("Hello")
            └── ElevatedButton(...)

# widget Reusability? 
- assume we create a second screen and we want the same custom button in the second screen, here it comes reusability factor
- we can reuse the same code for the custom button in screen two that present in screen one.


# Let's Analyze the skeleton of main.dart:

import 'package:flutter/material.dart';

void main() {               -> Entry point 
  runApp(const MyApp());    -> 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true, // optional for Material3 look
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) { => here's is where building of user Interface happens
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Center(
        child: Text('Hello, Flutter!'),
      ),
    );
  }
}

# const :

- eg. const Text(
  "Hello"
);

- a widget that can't be changed , a widget that only created once
- The value is known and fixed , hence it improves perfomance - optimized perfomance reduced memory overhead
- values are computed at compile time , its make them highly efficient
- predictable behaviour -> allows for consistent widget reuse behaviour
- optimize widget rebuild -> avoid unnecessary widget rebuids, which is cruicial for smooth animation and responsiveness
