import 'dart:io';

void main() {
  stdout.write("Enter numbers separated by space: ");
  String wekwa = stdin.readLineSync()!;

  List<double> numbers = wekwa.split(' ').map((e) => double.parse(e)).toList();

  double sum = addition(numbers);
  print("Sum: $sum");

  double product = multiply(numbers);
  print("Product: $product");
}

// Function to perform addition
double addition(List<double> numbers) {
  return numbers.reduce((value, element) => value + element);
}

// Function to perform multiplication
double multiply(List<double> numbers) {
  return numbers.reduce((value, element) => value * element);
}
