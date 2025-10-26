# 🎯 Assignment One - Dart Programming

<div align="center">

![Dart Assignment](https://img.shields.io/badge/Dart-Assignment-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Difficulty](https://img.shields.io/badge/Difficulty-1%20to%205-FF6B6B?style=for-the-badge)

**Test Your Dart Skills! 🚀**

*From basics to advanced - prove your mastery! ⚡*

</div>

---

## 📋 Assignment Overview

This assignment tests your understanding of Dart programming concepts. The questions are designed with increasing difficulty levels (1-5).

### 🎯 Learning Objectives
- Demonstrate proficiency in Dart fundamentals
- Apply object-oriented programming concepts
- Implement advanced Dart features
- Write clean, efficient, and well-structured code

---

## 🚀 Getting Started - Step by Step Instructions

### Step 1: Fork and Clone the Repository

1. **Fork the Repository:**
   - Go to the original repository on GitHub
   - Click the "Fork" button in the top-right corner
   - This creates a copy of the repository in your GitHub account

2. **Clone Your Forked Repository:**
   ```bash
   git clone https://github.com/YOUR_USERNAME/assignment-one-dart.git
   cd assignment-one-dart
   ```

### Step 2: Create Your Own Repository

1. **Create a New Repository on GitHub:**
   - Go to GitHub.com and click the "+" icon
   - Select "New repository"
   - **Repository name:** `assignment-one-dart-YOUR_NAME-YOUR_IUB_ID` (replace YOUR_NAME with your actual name and YOUR_IUB_ID with your IUB ID)
   - Make it **Public**
   - **DO NOT** initialize with README, .gitignore, or license
   - Click "Create repository"

2. **Connect Your Local Repository to Your New GitHub Repository:**
   ```bash
   # Remove the original remote
   git remote remove origin
  
   # Add your new repository as origin
   git remote add origin https://github.com/YOUR_USERNAME/assignment-one-dart-YOUR_NAME.git
  
   # Push your code to your new repository
   git push -u origin main
   ```

### Step 3: Set Up Your Development Environment

1. **Install Dart SDK:**
   - Visit [dart.dev/get-dart](https://dart.dev/get-dart)
   - Download and install Dart SDK for your operating system
   - Verify installation: `dart --version`

2. **Install Dependencies:**
   ```bash
   dart pub get
   ```

### Step 4: Complete the Assignment

Work through each question in the `question1.dart` through `question5.dart` files. Each file contains detailed TODO comments to guide you.

### Step 5: Test Your Solutions

1. **Run All Tests:**
   ```bash
   dart test
   ```

2. **Expected Output:**
   ```
   All tests should pass! ✅
   ```

3. **Take a Screenshot:**
   - Run `dart test` in your terminal
   - Take a screenshot showing all tests passing
   - Save it as `test-results.png` in your repository

### Step 6: Submit Your Work

1. **Commit and Push Your Changes:**
   ```bash
   # Add all your changes
   git add .
   
   # Commit with a descriptive message
   git commit -m "Complete Dart assignment - all questions implemented"
   
   # Push to your repository
   git push origin main
   ```

2. **Submit Your Repository:**
   - Share the link to your GitHub repository
   - Include the screenshot of passing tests
   - Make sure your repository is public so we can access it

---

## 📝 Assignment Questions

### Question 1: Basic Data Types & Functions

Create a Dart program that demonstrates basic data types and function usage.

**Requirements:**
1. Create variables of different data types: `String`, `int`, `double`, `bool`
2. Write a function called `calculateBMI` that takes weight (double) and height (double) as parameters and returns the BMI as a double
3. Write a function called `getGrade` that takes a score (int) and returns a grade (String) based on:
   - 90-100: A
   - 80-89: B
   - 70-79: C
   - 60-69: D
   - Below 60: F
4. Use string interpolation to display the results

**Expected Output:**
```
Name: John Doe, Age: 25, Height: 5.9, Is Student: true
BMI: 22.5
Grade: B
```

---

### Question 2: Collections & Control Flow

Build a student management system using Lists and Maps.

**Requirements:**
1. Create a `List<String>` of student names: ["Alice", "Bob", "Charlie", "Diana", "Eve"]
2. Create a `Map<String, int>` to store student scores
3. Use a for loop to assign random scores (60-100) to each student
4. Find and display:
   - The student with the highest score
   - The student with the lowest score
   - The average score of all students
5. Use a switch statement to categorize students:
   - 90-100: "Excellent"
   - 80-89: "Good"
   - 70-79: "Average"
   - Below 70: "Needs Improvement"

**Hint:** Use `import 'dart:math';` for random number generation.

---

### Question 3: Classes & Objects

Create a `BankAccount` class with the following specifications:

**Class Requirements:**
1. **Properties:**
   - `String accountNumber`
   - `String accountHolder`
   - `double balance`
   - `String accountType` (Savings/Checking)

2. **Constructor:**
   - Initialize all properties
   - Set initial balance to 0.0

3. **Methods:**
   - `deposit(double amount)`: Add money to account
   - `withdraw(double amount)`: Remove money from account (check for sufficient funds)
   - `getBalance()`: Return current balance
   - `displayAccountInfo()`: Show account details

4. **Create 3 bank accounts** and demonstrate:
   - Depositing money
   - Withdrawing money
   - Displaying account information
   - Handling insufficient funds scenario

**Expected Output:**
```
Account: 12345, Holder: Alice, Type: Savings, Balance: 1500.0
Account: 67890, Holder: Bob, Type: Checking, Balance: 800.0
Insufficient funds for withdrawal of 1000.0 from account 67890
```

---

### Question 4: Inheritance & Polymorphism

Create a vehicle management system using inheritance and polymorphism.

**Requirements:**
1. **Abstract Class `Vehicle`:**
   - Properties: `String brand`, `String model`, `int year`
   - Abstract method: `void start()`
   - Abstract method: `void stop()`
   - Concrete method: `void displayInfo()`

2. **Concrete Classes:**
   - `Car` extends `Vehicle`
     - Additional property: `int numberOfDoors`
     - Override `start()` and `stop()` methods
   - `Motorcycle` extends `Vehicle`
     - Additional property: `bool hasWindshield`
     - Override `start()` and `stop()` methods

3. **Create a list of vehicles** and demonstrate polymorphism by calling `start()`, `stop()`, and `displayInfo()` on each vehicle

4. **Add a method** to calculate vehicle age (current year - vehicle year)

**Expected Output:**
```
Vehicle Info: 2020 Toyota Camry (4 doors)
Starting the car engine...
Stopping the car engine...

Vehicle Info: 2021 Honda CBR (Has windshield: true)
Starting the motorcycle engine...
Stopping the motorcycle engine...

Car age: 4 years
Motorcycle age: 3 years
```

---

### Question 5: Advanced Features & Mixins

Create a comprehensive employee management system using advanced Dart features.

**Requirements:**
1. **Mixin `Payable`:**
   - Method: `double calculateSalary(double baseSalary, double bonus)`
   - Method: `void processPayment(double amount)`

2. **Mixin `Reportable`:**
   - Method: `String generateReport(String employeeName, String department)`

3. **Abstract Class `Employee`:**
   - Properties: `String name`, `String id`, `String department`
   - Abstract method: `String getJobTitle()`
   - Abstract method: `double getBaseSalary()`

4. **Concrete Classes:**
   - `Manager` extends `Employee` with `Payable` and `Reportable`
     - Additional property: `int teamSize`
     - Override required methods
   - `Developer` extends `Employee` with `Payable`
     - Additional property: `String programmingLanguage`
     - Override required methods

5. **Create employees** and demonstrate:
   - Salary calculation with bonus
   - Payment processing
   - Report generation (for managers)
   - Display all employee information

**Expected Output:**
```
Manager: John Smith (ID: M001, Department: IT, Team Size: 5)
Job Title: Manager
Base Salary: 8000.0
Calculated Salary: 9000.0
Payment processed: 9000.0
Report: Monthly report for John Smith in IT department

Developer: Alice Johnson (ID: D001, Department: IT, Language: Dart)
Job Title: Senior Developer
Base Salary: 6000.0
Calculated Salary: 6500.0
Payment processed: 6500.0
```

---

## 🧪 Testing Your Solutions

### How to Run Tests

1. **Run All Tests:**
   ```bash
   dart test
   ```

2. **Run Specific Test:**
   ```bash
   dart test test/question1_test.dart
   ```

3. **Run with Verbose Output:**
   ```bash
   dart test --reporter=expanded
   ```

### Expected Test Results

When all tests pass, you should see:
```
✅ All tests passed!
```

**Important:** Take a screenshot of your test results and include it in your submission!

---

## 📊 Evaluation Criteria

### Code Quality (40%)
- Clean, readable code structure
- Proper naming conventions
- Appropriate comments
- Efficient implementation

### Functionality (35%)
- Correct implementation of requirements
- Proper use of Dart features
- Expected output matches specifications
- Error handling where appropriate

### Dart Concepts (25%)
- Proper use of data types and variables
- Correct implementation of functions
- Effective use of collections
- Proper object-oriented programming
- Appropriate use of inheritance and polymorphism
- Correct implementation of mixins

---

## 📁 Required File Structure

Your repository should have this structure:
```
assignment-one-dart-YOUR_NAME-YOUR_IUB_ID/
├── question1.dart
├── question2.dart
├── question3.dart
├── question4.dart
├── question5.dart
├── test-results.png (screenshot of passing tests)
├── README.md
├── pubspec.yaml
└── test/
    ├── question1_test.dart
    ├── question2_test.dart
    ├── question3_test.dart
    ├── question4_test.dart
    └── question5_test.dart
```

---

## 🚀 Submission Checklist

Before submitting, make sure you have:

- [ ] Forked the original repository
- [ ] Created your own repository with the naming convention: `assignment-one-dart-YOUR_NAME`
- [ ] Completed all 5 questions
- [ ] All tests pass (`dart test`)
- [ ] Taken a screenshot of passing tests
- [ ] Committed and pushed all changes to your repository
- [ ] Made your repository public
- [ ] Shared the repository link for submission

---

## 💡 Tips for Success

1. **Start with Question 1** and work sequentially
2. **Read requirements carefully** before coding
3. **Test each question** before moving to the next
4. **Use proper Dart syntax** and conventions
5. **Don't overthink** - focus on requirements
6. **Take your time** - quality over speed

---

## 🆘 Need Help?

If you encounter issues:

1. **Check your Dart installation:** `dart --version`
2. **Verify dependencies:** `dart pub get`
3. **Run tests individually:** `dart test test/question1_test.dart`
4. **Check for syntax errors:** `dart analyze`

---

## 🎯 Good Luck!

Remember: This assignment tests your understanding of Dart fundamentals and advanced concepts. Take your time, read the requirements carefully, and implement clean, efficient solutions.

**You've got this! 🚀**

---

<div align="center">

**Happy Coding! 💻**

*Show us what you've learned!*

</div>