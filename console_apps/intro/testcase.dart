

import 'package:test/test.dart';
exclaim(String what) => what + "!";

//Una sola prueba para exclaim
/*
void main() {
      test("exclaim() test", (){
      String original = "I'm testing";
      expect(exclaim(original), equals("I'm testing!"));
   });
}
*/
//Varias pruebas a exclaim
void main() {
List testCases = [["Dog", "Dog!"], ["", "!"], ["H e l l o ", "H e l l o !"], ["dog", "dog?"]];
    for (List testCase in testCases) {
    test("exclaim() test" + testCase[0], (){
            expect(exclaim(testCase[0]), equals(testCase[1]));
         });
    }
}