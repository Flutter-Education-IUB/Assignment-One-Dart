// Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐
// TODO: Complete the following requirements:

// 1. Create variables of different data types: String, int, double, bool
// TODO: Add your variables here

String name = "John Doe"; // TODO: Initialize with your name
int age = 25; // // TODO: Initialize with your age
double height = 5.9; // // TODO: Initialize with your height
bool isStudent = true; //  // TODO: Initialize with true or false'

// 2. Write a function called calculateBMI that takes weight (double) and height (double) as parameters and returns the BMI as a double
// TODO: Implement the calculateBMI function
double calculateBMI(double weight, double height) {
  // TODO: Calculate BMI = weight / (height * height)
  return (weight / (height * height)); // TODO: Replace with actual calculation
}

// 3. Write a function called getGrade that takes a score (int) and returns a grade (String) based on:
//    - 90-100: A
//    - 80-89: B
//    - 70-79: C
//    - 60-69: D
//    - Below 60: F
// TODO: Implement the getGrade function
String getGrade(int score) {
  // TODO: Add your logic here
  if (score >= 90)
    return "A";
  else if (score >= 80)
    return "B";
  else if (score >= 70)
    return "C";
  else if (score >= 60)
    return "D";
  else
    return "F";
  // TODO: Return appropriate grade
}

void main() {
  // TODO: Initialize your variables with appropriate values
  name = "John Doe";
  age = 25;
  height = 5.9;
  isStudent = true;

  // TODO: Calculate BMI and grade
  double bmi = calculateBMI(150.0, height); // Example: 150 lbs, 5.9 ft
  String grade = getGrade(85); // Example score

  // TODO: Use string interpolation to display the results
  print("Name: $name, Age: $age, Height: $height, Is Student: $isStudent");
  print("BMI: $bmi");
  print("Grade: $grade");
}
