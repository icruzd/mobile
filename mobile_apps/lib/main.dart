import 'package:flutter/material.dart';
import './layout_6/BoxModel.dart';
import './layout_6/Container.dart';
import './layout_6/FittedBox.dart';
import './layout_6/FlexAndFlexible.dart';
import './layout_6/GridViewCount.dart';
import './layout_6/GridViewExtent.dart';
import './layout_6/InfiniteHeight.dart';
import './layout_6/IntrinsicWidth.dart';
import './layout_6/LandingScene.dart';
import './layout_6/ListView.dart';
import './layout_6/ListViewWithListTile.dart';
import './layout_6/MainAxisAlignment.dart';
import './layout_6/RowsAndColumns.dart';
import './layout_6/SnackBar.dart';
import './layout_6/SpacersAndExpandeds.dart';
import './layout_6/Tables.dart';

//import 'package:flutter/rendering.dart';

void main() {
//debugPaintSizeEnabled=true;
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ch 5 Layouts",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext ctx) => LandingSceneDemo(),
        '/boxModel': (BuildContext ctx) => BoxModelDemo(),
        '/container': (BuildContext ctx) => ContainerDemo(),
        '/fittedBox': (BuildContext ctx) => FittedBoxDemo(),
        '/flexAndFlexible': (BuildContext ctx) => FlexAndFlexibleDemo(),
        '/gridViewExtent': (BuildContext ctx) => GridViewExtentDemo(),
        '/gridViewCount': (BuildContext ctx) => GridViewCountDemo(),
        '/infiniteHeight': (BuildContext ctx) => InfiniteHeightDemo(),
        '/intrinsicWidth': (BuildContext ctx) => IntrinsicWidthSetting(),
        '/rowsAndColumns': (BuildContext ctx) => RowsAndColumnsDemo(),
        '/mainAxisAlignment': (BuildContext ctx) => MainAxisAlignmentDemo(),
        '/snackBar': (BuildContext ctx) => SnackBarDemo(),
        '/spacersAndExpandeds': (BuildContext ctx) => SpacersAndExpandedsDemo(),
        '/listView': (BuildContext ctx) => ListViewDemo(),
        '/listViewWithListTile': (BuildContext ctx) =>
            ListViewWithListTileDemo(),
        '/tables': (BuildContext ctx) => TablesDemo(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
