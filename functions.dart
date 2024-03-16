import 'dart:io';

void main() {
  while (true) {
    print("\nMenu:");
    print("1. Addition");
    print("2. Multiplication");
    print("3. Quit");

    stdout.write("Enter your choice: ");
    String chaguo = stdin.readLineSync()!;

    switch (chaguo) {
      case '1':
        toPerfomOperatin("addition");
        break;
      case '2':
        toPerfomOperatin("multiplication");
        break;
      case '3':
        print("Goodbye!");
        return;
      default:
        print("Invalid choice. Please enter a number from 1 to 3.");
        break;
    }
  }
}

void toPerfomOperatin(String operation) {
  stdout.write("Enter numbers separated by space: ");
  String input = stdin.readLineSync()!;

  List<double> numbers = input.split(' ').map((e) => double.parse(e)).toList();

  double result;
  if (operation == "addition") {
    result = add(numbers);
    print("Sum: $result");
  } else if (operation == "multiplication") {
    result = multiply(numbers);
    print("Product: $result");
  }
}

double add(List<double> numbers) {
  return numbers.reduce((value, element) => value + element);
}

double multiply(List<double> numbers) {
  return numbers.reduce((value, element) => value * element);
}
