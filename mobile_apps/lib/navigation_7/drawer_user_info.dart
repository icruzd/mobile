import 'package:flutter/material.dart';

void main() {
  runApp(BasicDrawer());
}

class BasicDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return MediaQuery(
      data: MediaQuery.of(context), //new MediaQueryData(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Drawer Navigation'),
          ),
          body: const Text('DrawerNavigation'),
          drawer: new SizedBox(
            width: 200.0,
            height: 700.0,
            child: Drawer(
              child: new ListView(
                children: <Widget>[
                  new DrawerHeader(
                    child: new Text("DRAWER HEADER.."),
                    decoration: new BoxDecoration(color: Colors.orange),
                  ),
                  new ListTile(
                    title: new Text("nombre"),
                    onTap: () {
                      Navigator.pop(context);
                      //Navigator.push(context,
                      //    new MaterialPageRoute(builder: (context) => new HomePage()));
                    },
                  ),
                  new ListTile(
                    title: new Text("apellido"),
                    onTap: () {
                      Navigator.pop(context);
                      //  Navigator.push(context,
                      //      new MaterialPageRoute(builder: (context) => new HomePage()));
                    },
                  ),
                  new ListTile(
                    title: new Text("dirección"),
                    onTap: () {
                      Navigator.pop(context);
                      //  Navigator.push(context,
                      //      new MaterialPageRoute(builder: (context) => new HomePage()));
                    },
                  ),
                  new ListTile(
                    title: new Text("user"),
                    onTap: () {
                      Navigator.pop(context);
                      //Navigator.push(context,
                      //   new MaterialPageRoute(builder: (context) => new HomePage()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
