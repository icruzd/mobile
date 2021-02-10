
      import 'package:test/test.dart';
      exclaim(String what) => what + "!";


      negate(num n) => -n;
      void main() {
         group("exclaim tests", () {
         List testCases = [["Dog", "Dog!"], ["", "!"], ["H e l l o ", "H e l l o !"]];

            for (List testCase in testCases) {
               test(testCase[0], (){
               expect(exclaim(testCase[0]), equals(testCase[1]));
               });
            }
         });

         group("negate tests", () {
         List testCases = [[4, -4], [3,-3], [0, 0]];
            for (List testCase in testCases) {
               test(testCase[0].toString(), (){
               expect(negate(testCase[0]), equals(testCase[1]));
               });
            }
         });

      }