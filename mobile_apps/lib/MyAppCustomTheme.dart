import 'package:flutter/material.dart';

class MyAppCustomTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Theme(
          data: Theme.of(context).copyWith(
            textTheme: Theme.of(context).textTheme.copyWith(
                  display1: TextStyle(
                    color: Colors.yellow,
                  ),
                ),
          ),
          child: Builder(builder: (BuildContext context) {
            return Text(
              "Simple Text",
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.display1,
            );
          }),
        ),
      ),
    );
  }
}

//our main method. run our app.
void main() {
  runApp(MyAppCustomTheme());
}
