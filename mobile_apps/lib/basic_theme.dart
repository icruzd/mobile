import 'package:flutter/material.dart';

void main() {
  runApp(UniqueTheme());
}

class UniqueTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
      ),
      child: Builder(
        builder: (BuildContext context) {
          return Container(
            width: 100,
            height: 100,
            color: Theme.of(context).colorScheme.primary,
          );
        },
      ),
    );
  }
}
