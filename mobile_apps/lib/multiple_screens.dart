import 'package:flutter/material.dart';

//This is our main class
class MrPageNavigation extends StatelessWidget {
  //BuildContext is a handle to the location of a widget in the widget tree.
  @override
  Widget build(BuildContext context) {
    // The MaterialApp's home is automatically set as the bottom of the navigation stack
    return MaterialApp(
      title: 'Page Navigation App',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Homepage(),
    );
  }
}

//`Homepage` class represents the homepage of our app.
//Has a button for navigating to the second page
//It is a StatelessWidget,meaning that it does not require mutable state.
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //The `Scaffold()` will create us a visual scaffold for material design widgets.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        // `RaisedButton()` creates a filled button.
        child: RaisedButton(
          child: const Text('Go to Page 2 >>'),
          onPressed: () {
            // Pushs the Page2 widget onto the navigation stack
            // `MaterialPageRoute()` Creates a page route for use in a material design app.
            // `MaterialPageRoute` class is a modal route that replaces the entire screen with a platform-adaptive transition.
            // `Navigator` is a widget that manages a set of child widgets with a stack discipline.
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => Page2()));
          },
        ),
      ),
    );
  }
}

//Our Page2.
//Has two button for previous as well as next page navigation
class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      // `body` is the the primary content of the scaffold.
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(10.0),
              child: new RaisedButton(
                child: new Text('<< Go To Previous Page'),
                //Navigator is a widget that manages a set of child widgets with a stack discipline.
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(10.0),
              child: new RaisedButton(
                child: new Text('Go To Next Page >>'),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => Page3()),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Our Page3. We arrive here from Page2.
//Has a button for navigating us back to that page
class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('<< Go to Previous Page'),
          // Pops Second Screen off the navigation stack
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}

//our main method. run our app.
void main() {
  runApp(MrPageNavigation());
}
