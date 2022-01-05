import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_testing/counter.dart';

void main() {
  final counter = Counter();

  //Single unit test
  test("Counter value should be incremented", () {
    counter.increment();
    expect(counter.value,
        1); //counter.value = current actual value, 1 = expected value
  }); //Run debug to run test
}
