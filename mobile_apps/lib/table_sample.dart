import 'package:flutter/material.dart';

class TableSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Theme(
          data: Theme.of(context).copyWith(
            textTheme: Theme.of(context).textTheme.copyWith(
                  display1:
                      TextStyle(color: Colors.yellow, height: 2, fontSize: 15),
                  display2:
                      TextStyle(color: Colors.red, height: 2, fontSize: 15),
                ),
          ),
          child: Builder(builder: (BuildContext context) {
            return Directionality(
              child: Table(
                children: <TableRow>[
                  TableRow(children: <Widget>[
                    Text(
                      'Ventas',
                      textDirection: TextDirection.ltr,
                      style: Theme.of(context).textTheme.display1,
                    ),
                    Text(
                      'Enero',
                      textDirection: TextDirection.ltr,
                      style: Theme.of(context).textTheme.display1,
                    ),
                    Text(
                      'Febrero',
                      textDirection: TextDirection.ltr,
                      style: Theme.of(context).textTheme.display1,
                    ),
                    Text(
                      'Marzo',
                      textDirection: TextDirection.ltr,
                      style: Theme.of(context).textTheme.display1,
                    ),
                  ]),
                  TableRow(
                    children: <Widget>[
                      Text('Pérez'),
                      Text('3742'),
                      Text('5573'),
                      Text('4323'),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Text('Juárez'),
                      Text('3823'),
                      Text('4500'),
                      Text('3277'),
                    ],
                  ),
                ],
              ),
              textDirection: TextDirection.ltr,
            );
          }),
        ),
      ),
    );
  }
}

//our main method. run our app.
void main() {
  runApp(TableSample());
}
