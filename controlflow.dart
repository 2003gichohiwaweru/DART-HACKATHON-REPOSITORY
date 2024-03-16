import 'dart:io';

void main() {
  stdout.write("Enter the marks: ");
  int marks = int.parse(stdin.readLineSync()!);

  String grade = calculateGrade(marks);
  print("Grade: $grade");
}

String calculateGrade(int marks) {
  if (marks > 85) {
    return "Excellent";
  } else if (marks >= 75 && marks <= 85) {
    return "Very Good";
  } else if (marks >= 65 && marks < 75) {
    return "Good";
  } else {
    return "Average";
  }
}
