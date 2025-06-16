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
- StatefulWidget - Can change based on interaction or data => textFeild, CheckBox,custom counters

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

