import 'package:flutter/material.dart';

void main() {
  runApp(BasicDrawer());
}

class BasicDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: new MediaQueryData(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Drawer Navigation'),
          ),
          body: const Text('DrawerNavigation'),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                Text('Option 1'),
                Text('Option 2'),
                Text('Option 3'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
