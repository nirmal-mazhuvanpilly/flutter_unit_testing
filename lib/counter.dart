class Counter {
  int value = 0;

  void increment() => value++;

  void decrement() => value--;

  int addTwoNumbers(int firstNum, int secondNum) {
    return firstNum + secondNum;
  }

  int subtractTwoNumbers(int firstNum, int secondNum) {
    return firstNum - secondNum;
  }

  static String stringValidator(String value) {
    if (value.isNotEmpty) {
      return value;
    }
    return "Enter valid string";
  }
}
