# fortune_cookie

# setState() ?

- Its a flutter method that tells the framework
  " Hey i've changed some data - so rebuild the UI with new values" ->  that triggers build() method internally.

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

"`setState()` in Flutter is the `bridge` between state change and UI re-render. Without it, the widget tree doesn’t react — it just stares at stale data."

# Widget

- widget is a `building block` of Flutter UI.
- EveryThing we see in a Flutter app - text, buttons, images, rows ,padding, even the entire app itself -- is a widget.
- Flutter builds a widget tree => a structure of nested widget
- widgets are objects which defines the `structural` and `visual element` of flutter appication

`Widgets in Flutter are declarative UI units , we don't draw the UI -- we describe it with widgets, and flutter takes care of rendering`

## Types of widget :

- `StatelessWidget` - Immutable.Doesn't change over time => Text, icon, container
  - doesn't have state means they cannot change they properties or appearence once they've created . -> eg. Text, IconButton  etc.
- `StatefulWidget` - Can change based on interaction or data => textFeild, CheckBox,custom counters -> eg. input,dataChanges etc.
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
- Parent widget gives structure ➜ child widgets define content
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

<void main() {
  runApp(const MyApp()); -> we're creating an object of our root widget class MyApp, and Flutter will render everything starting from that
}

<class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
-> Why pass key to parent?
- Because StatelessWidget (your superclass) needs the Key to uniquely identify this widget in the widget tree.
- This helps prevent unnecessary rebuilds and preserves widget state where needed.

  @override
  <Widget build(BuildContext context) {
    <return MaterialApp(
      <title: 'Flutter Skeleton',
      <theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      <home: const MyHomePage(), // Entry widget
    );
  }
}

-> Why Must We Override build()?

- Because StatelessWidget is just a concept, and it needs us to tell it:

- “What UI should I draw for this widget?”

- Without build(), our widget is just... blank.


<class MyHomePage extends StatefulWidget { 
 This is just a container. It doesn’t build anything.
< const MyHomePage({super.key});

 @override
<State<MyHomePage> createState() => _MyHomePageState();
> }
- Whenever Flutter creates a MyHomePage, it should manage it using _MyHomePageState();
- createState() => Here’s the brain (state) that will manage my body (widget)

<class _MyHomePageState extends State<MyHomePage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Hello World"), // Replace this with your custom UI
            ],
          ),
        ),
      );
    }
  }

-> `_MyHomePageState` is the engine that powers `MyHomePage`.
Its `build`() returns the UI. When `state changes, build() is called again` — and Flutter updates the screen.


# const :

> const Text(
> "Hello"
> );

- a widget that can't be changed , a widget that only created once
- The value is known and fixed , hence it improves perfomance - optimized perfomance reduced memory overhead
- values are computed at compile time , its make them highly efficient
- predictable behaviour -> allows for consistent widget reuse behaviour
- optimize widget rebuild -> avoid unnecessary widget rebuids, which is cruicial for smooth animation and responsiveness


# Dart -> Inheritance 

- OOP in flutter widget

- Widget                <-- Base class for everything visible on screen
|
|-- StatelessWidget     <-- Immutable UI (doesn't change over time)
|   |
|   |-- Text("Hello")          <-- Basic text widget
|   |-- Icon(Icons.add)        <-- Basic icon
|   |-- Center(child: ...)     <-- Layout/Positioning widget
|   |-- MyCustomStateless()    <-- Your custom stateless widget
|
|-- StatefulWidget       <-- Mutable UI (can change via setState)
    |
    |-- ElevatedButton(onPressed: ...)   <-- Has internal state like pressed/not pressed
    |-- TextField(controller: ...)       <-- Tracks user input
    |-- Slider(value: ...)               <-- Changes interactively
    |-- MyCustomStateful()               <-- Your custom widget with mutable state


# How widget is handles BTS
 
- `Text`	Class name (Widget type)
- "Hello"	`Constructor argument` (data to display)
- Text("Hello")	Creates an `object of type Text` → `this object is a Widget`

`Every Widget you use (like Text("Hi")) is an object of a Widget class.
And every Widget class (like Text) creates objects when called.`

- `Widget == Object of Widget Class `



