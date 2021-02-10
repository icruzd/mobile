import 'package:flutter/material.dart';
import './navigation_7/Dialogs.dart';
import './navigation_7/DrawerNavigation.dart';
import './navigation_7/Landing.dart';
import './navigation_7/StackNavigation.dart';
import './navigation_7/TabNavigation.dart';
import './navigation_7/WidgetWithDrawer1.dart';
import './navigation_7/WidgetWithDrawer2.dart';
import './navigation_7/WidgetWithDrawer3.dart';
import './navigation_7/WidgetWithScaffold1.dart';
import './navigation_7/WidgetWithScaffold2.dart';
import './navigation_7/WidgetWithScaffold3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation and Routing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext ctx) => Landing(),
        '/tab': (BuildContext ctx) => TabNavigation(),
        '/drawer': (BuildContext ctx) => DrawerNavigation(),
        '/stack': (BuildContext ctx) => StackNavigation(),
        '/dialog': (BuildContext ctx) => Dialogs(),
        '/drawer1': (BuildContext ctx) => WidgetWithDrawer1(),
        '/drawer2': (BuildContext ctx) => WidgetWithDrawer2(),
        '/drawer3': (BuildContext ctx) => WidgetWithDrawer3(),
        '/stack1': (BuildContext ctx) => WidgetWithScaffold1(),
        '/stack2': (BuildContext ctx) => WidgetWithScaffold2(),
        '/stack3': (BuildContext ctx) => WidgetWithScaffold3(),
      },
    );
  }
}
