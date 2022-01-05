import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_testing/counter.dart';

void main() {
  final counter = Counter();

  //Grouping test
  group("Counter unit testing", () {
    //
    //Counter value increment test
    test("Counter value should be incremented", () {
      counter.increment();
      expect(counter.value,
          1); //counter.value = current actual value, 1 = expected value
    }); //Run debug to run test or Run flutter test test/counter_test.dart in command line

    //Counter value decrement test
    test("Counter value should be decremented", () {
      counter.decrement();
      expect(counter.value, 0);
    });

    //Subtracting two numbers
    test("Difference of two numbers", () {
      expect(counter.subtractTwoNumbers(30, 10), 20);
    });

    //Adding two numbers
    test("Sum of two numbers", () {
      int sumOfNumners = counter.addTwoNumbers(10, 20);
      expect(sumOfNumners, 30);
    });

    //Contains
    test("contains", () {
      List<dynamic> testList = [1, 2.0, "3", 4, 5, 6, 7, 8, 9, 10];
      expect(testList, contains("3"));
    });

    //isA
    test("isA", () {
      List<dynamic> testList = [1, 2.0, "3", 4, 5, 6, 7, 8, 9, 10];
      expect(testList, isA<List<dynamic>>());
    });

    //prints
    test("prints", () {
      sum() {
        // ignore: avoid_print
        print("printing");
        // ignore: avoid_print
        print("testing");
        // ignore: avoid_print
        print("null");
      }

      expect(sum, prints("printing\ntesting\nnull\n"));
    });

    //equals
    test("equals", () {
      List<dynamic> testList = [1, 2.0, "3", 4, 5, 6, 7, 8, 9, 10];
      expect(testList.elementAt(0), equals(1));
    });

    //allOf
    test("allOf", () {
      List<dynamic> testList = [1, 2.0, "3", 4, 5, 6, 7, 8, 9, 10];
      expect(testList, allOf([isA<List<dynamic>>(), contains("3")]));
    });

    //anyElement
    test("anyElement", () {
      List<dynamic> testList = [1, 2.0, "3", 4, 5, 6, 7, 8, 9, 10];
      expect(testList, anyElement(2.0));
    });

    //anyOf
    test("anyOf", () {
      List<dynamic> testList = [1, 2.0, "3", 4, 5.0, "6", 7, 8, 9, true];
      expect(testList, anyOf([contains(25), contains(true)]));
    });

    //closeTo
    test("closeTo", () {
      List<dynamic> testList = [1, 2.0, "3", 4, 5.0, "6", 7, 8, 9, true];
      expect(testList.elementAt(0), closeTo(1, 2));
    });

    //collapseWhitespace
    test("collapseWhitespace", () {
      List<dynamic> testList = [
        1,
        2.0,
        "3",
        4,
        5.0,
        "6",
        7,
        "Hello World",
        9,
        true
      ];
      expect(testList.elementAt(7), collapseWhitespace("Hello  World"));
    });

    //stringValidator
    test("stringValidator1", () {
      expect(Counter.stringValidator(""), "Enter valid string");
    });

    //stringValidator
    test("stringValidator2", () {
      expect(Counter.stringValidator("Flutter"), "Flutter");
    });
  });
}
