
void main() 
{ 
  var list = ["Mateo", "Marcos","Lucas","Juan","Andres"]; 
  print("Funciones anónimas en Dart"); 
  list.forEach((item) { 
    print('${list.indexOf(item)} : $item'); 
  }); 
}
