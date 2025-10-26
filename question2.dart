// Question 2: Collections & Control Flow (Difficulty: 2/5) ⭐⭐
// TODO: Complete the following requirements:

import 'dart:math';

void main() {
  // 1. Create a List<String> of student names: ["Alice", "Bob", "Charlie", "Diana", "Eve"]
  // TODO: Create the student names list
  List<String> studentNames = []; // TODO: Add the student names
  
  // 2. Create a Map<String, int> to store student scores
  // TODO: Create the scores map
  Map<String, int> studentScores = {}; // TODO: Initialize the map
  
  // 3. Use a for loop to assign random scores (60-100) to each student
  // TODO: Implement the for loop to assign random scores
  Random random = Random();
  // TODO: Add your for loop here
  
  // 4. Find and display:
  //    - The student with the highest score
  //    - The student with the lowest score
  //    - The average score of all students
  // TODO: Implement the logic to find highest, lowest, and average scores
  String highestStudent = "";
  int highestScore = 0;
  String lowestStudent = "";
  int lowestScore = 100;
  double averageScore = 0.0;
  
  // TODO: Add your logic here
  
  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: $averageScore");
  
  // 5. Use a switch statement to categorize students:
  //    - 90-100: "Excellent"
  //    - 80-89: "Good"
  //    - 70-79: "Average"
  //    - Below 70: "Needs Improvement"
  // TODO: Implement the switch statement for each student
  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;
    String category = "";
    
    // TODO: Add your switch statement here
    switch (score ~/ 10) {
      case 10:
      case 9:
        category = "Excellent";
        break;
      case 8:
        category = "Good";
        break;
      case 7:
        category = "Average";
        break;
      default:
        category = "Needs Improvement";
    }
    
    print("$student: $score ($category)");
  }
}
