import 'package:flutter/material.dart';

class CustomTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Center(
        child: Theme(
          data: Theme.of(context).copyWith(
            textTheme: Theme.of(context).textTheme.copyWith(
                  display1: TextStyle(
                    color: Colors.white,
                  ),
                ),
          ),
          child: Builder(
            builder: (BuildContext context) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Container(
                  width: 200,
                  height: 100,
                  color: Theme.of(context).colorScheme.primary,
                  child: Center(
                    child: Text(
                      "themes",
                      textDirection: TextDirection.ltr,
                      style: Theme.of(context).textTheme.display1,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

//our main method. run our app.
void main() {
  runApp(CustomTheme());
}
