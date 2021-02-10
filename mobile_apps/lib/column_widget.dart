import 'package:flutter/material.dart';

void main() {
  runApp(ColumnWidget());
}

class ColumnWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Column"),
        ),
        body: Container(
            //alignment: Alignment.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Expanded(
                child: Center(
                  child: Text("Item1"),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text("Item2"),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text("Item3"),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text("Item4"),
                ),
              ),
            ])),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.thumb_up),
          onPressed: () => {},
        ),
      ),
    );
  }
}
