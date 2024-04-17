import "dart:io";

// function to promp the user for input
double inputNumber() {
  print("\nPlease enter a number: \n");
  double num1 = double.parse(stdin.readLineSync()!);
  return num1;
}

// function to prompt the user to enter a math operand
String inputMathOperand() {
  print("\nPlease enter a math operand (+, _, *, /): \n");
  String mathOperand = stdin.readLineSync()!;
  return mathOperand;
}

void main() {
  // call the functions to implement the calculator
  double num1 = inputNumber();
  double num2 = inputNumber();
  String operand = inputMathOperand();
  double answer = 0;
  // perform math operation per user's input
  if (operand == "+") {
    answer = num1 + num2;
    print("${num1} ${operand} ${num2} = ${answer}");
  } else if (operand == "-") {
    answer = num1 - num2;
    print("${num1} ${operand} ${num2} = ${answer}");
  } else if (operand == "*") {
    answer = num1 * num2;
    print("${num1} ${operand} ${num2} = ${answer}");
  } else if (operand == "/") {
    answer = num1 / num2;
    print("${num1} ${operand} ${num2} = ${answer}");
  } else {
    print("Error occured. Enter valid inputs.");
  }
}
