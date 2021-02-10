import 'dart:html';
import 'dart:async';


Iterable<String> thingsTodo() sync* {
  var actions = ['Walk', 'Wash', 'Feed'];
  var pets = ['cats', 'dogs'];

  for (var action in actions) {
    for (var pet in pets) {
      if (pet == 'cats' && action != 'Feed') continue;
      yield '$action the $pet';
    }
  }
}

void addTodoItem(String item) {
  print(item);

  var listElement = LIElement();
  listElement.text = item;
  todoList.children.add(listElement);
}

UListElement todoList;

void main() {
  String url="https://raw.githubusercontent.com/davecom/Dart-for-Absolute-Beginners/master/Chapter_14/pandp.txt";
  // String url="https://github.com/PacktPublishing/Cpp-Windows-Programming";




  //Future<String> f = HttpRequest.getString("pandp.txt");
  Future<String> f = HttpRequest.getString(url);
  //f.then((String s) => print(s));
  //f.then((String s) => querySelector('#output').text = s);

/*
  f.then((String s) { 
    querySelector('#output').text = s;
    throw new Exception();
    }).catchError((Error e) => querySelector('#output').text = e.toString());
*/
  f.then((String s) { 
    querySelector('#output').text = s;
    throw new Exception();
    }).catchError((Error e) => querySelector('#output').text = "Error");


  //f.then((String s) => print(s)).catchError((Error e) => print(e.toString()));


  todoList = querySelector('#todolist');
  thingsTodo().forEach(addTodoItem);

  //querySelector('#output').text = 'Your Dart app is running.';

}
