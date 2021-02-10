import 'package:flutter/material.dart';

void main() {
  runApp(UniqueTheme());
}

class UniqueTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800], //Colors.blue
        accentColor: Colors.cyan[600], // Colors.green
        primarySwatch: Colors.deepPurple,

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(
              color: Colors.purple, fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),

      home: Scaffold(
        appBar: AppBar(
          title: const Text('ThemeData Demo'),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
        body: Center(
          child: Text(
            'Button pressed 0 times',
          ),
        ),
      ),

//routes: <String, WidgetBuilder>{  '/route':  (BuildContext ctx)=> MyWidget1(),}
/*
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Home Route'),
            ),
          );
        },
        '/about': (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('About Route'),
            ),
          );
        }
      },
      */
      debugShowCheckedModeBanner: false,
    );
  }
}
