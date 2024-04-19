import "dart:io";

// function to promp the user for input
double inputNumber() {
  print("\nPlease enter a number: \n");
  double num1 = double.parse(stdin.readLineSync()!);
  return num1;
}

// function to prompt the user to enter a math operand
int inputMathOperand() {
  print("\nPlease choose an operation:");
  print("==============================");
  print("1. Addition ( + )");
  print("2. Subtraction ( - )");
  print("3. Multiplication ( * )");
  print("4. Division ( / )");
  print("5. Modulo ( % )\n");
  int choice = int.parse(stdin.readLineSync()!);
  return choice;
}

void main() {
  // call the functions to implement the calculator
  double num1 = inputNumber();
  double num2 = inputNumber();
  int choice = inputMathOperand();
  double answer = 0;
  String operand = "";
  // perform math operation per user's input
  if (choice == 1) {
    operand = "+";
    print("Your choice: Addition");
    answer = num1 + num2;
    print("\n${num1} ${operand} ${num2} = ${answer}\n");
  } else if (choice == 2) {
    operand = "-";
    print("Your choice: Subtraction");
    answer = num1 - num2;
    print("\n${num1} ${operand} ${num2} = ${answer}\n");
  } else if (choice == 3) {
    operand = "*";
    print("Your choice: Multiplication");
    answer = num1 * num2;
    print("\n${num1} ${operand} ${num2} = ${answer}\n");
  } else if (choice == 4) {
    operand = "/";
    print("Your choice: Division");
    answer = num1 / num2;
    print("\n${num1} ${operand} ${num2} = ${answer}\n");
  } else if (choice == 5) {
    operand = "%";
    print("Your choice: Modulus");
    answer = num1 % num2;
    print("\n${num1} ${operand} ${num2} = ${answer}\n");
  } else {
    print("\nError occured. Enter valid inputs.\n");
  }
}
