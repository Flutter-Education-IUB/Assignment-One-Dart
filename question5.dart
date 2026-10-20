// Question 5: Advanced Features & Mixins (Difficulty: 5/5) ⭐⭐⭐⭐⭐
/**
 * EXPECTED OUTPUT:
 * Manager: John Smith (ID: M001, Department: IT, Team Size: 5)
 * Job Title: Manager
 * Base Salary: 8000.0
 * Calculated Salary: 9000.0
 * Payment processed: 9000.0
 * Report: Monthly report for John Smith in IT department
 * 
 * Developer: Alice Johnson (ID: D001, Department: IT, Language: Dart)
 * Job Title: Senior Developer
 * Base Salary: 6000.0
 * Calculated Salary: 6500.0
 * Payment processed: 6500.0
 */

// 1. Mixin Payable:
//    - Method: double calculateSalary(double baseSalary, double bonus)
//    - Method: void processPayment(double amount)
mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    return baseSalary + bonus;
  }

  void processPayment(double amount) {
    print("Payment processed: $amount");
  }
}

// 2. Mixin Reportable:
//    - Method: String generateReport(String employeeName, String department)
mixin Reportable {
  String generateReport(String employeeName, String department) {
    return "Report: Monthly report for $employeeName in $department department";
  }
}

// 3. Abstract Class Employee:
//    - Properties: String name, String id, String department
//    - Abstract method: String getJobTitle()
//    - Abstract method: double getBaseSalary()
abstract class Employee {
  String name;
  String id;
  String department;

  Employee(this.name, this.id, this.department);

  String getJobTitle();
  double getBaseSalary();

  void displayInfo() {
    print("Employee: $name (ID: $id, Department: $department)");
  }
}

// 4. Concrete Classes:
//    - Manager extends Employee with Payable and Reportable
//      - Additional property: int teamSize
//      - Override required methods
class Manager extends Employee with Payable, Reportable {
  int teamSize;

  Manager(String name, String id, String department, this.teamSize)
      : super(name, id, department);

  @override
  String getJobTitle() {
    return "Manager";
  }

  @override
  double getBaseSalary() {
    return 8000.0;
  }

  @override
  void displayInfo() {
    print(
      "Manager: $name (ID: $id, Department: $department, Team Size: $teamSize)",
    );
  }
}

//    - Developer extends Employee with Payable
//      - Additional property: String programmingLanguage
//      - Override required methods
class Developer extends Employee with Payable {
  String programmingLanguage;

  Developer(String name, String id, String department, this.programmingLanguage)
      : super(name, id, department);

  @override
  String getJobTitle() {
    return "Senior Developer";
  }

  @override
  double getBaseSalary() {
  
    return 6000.0;
  }

  @override
  void displayInfo() {
    print("Developer: $name (ID: $id, Department: $department, Programming Language: $programmingLanguage)");
  }
}

void main() {
  Manager manager = Manager("John Smith", "M001", "IT", 5);
  Developer developer =
      Developer("Alice Johnson", "D001", "IT", "Dart");

  manager.displayInfo();
  print("Job Title: ${manager.getJobTitle()}");
  print("Base Salary: ${manager.getBaseSalary()}");

  double managerSalary = manager.calculateSalary(
    manager.getBaseSalary(),
    1000.0,
  );

  print("Calculated Salary: $managerSalary");
  manager.processPayment(managerSalary);
  print(manager.generateReport(manager.name, manager.department));

  print("");

  developer.displayInfo();
  print("Job Title: ${developer.getJobTitle()}");
  print("Base Salary: ${developer.getBaseSalary()}");

  double developerSalary = developer.calculateSalary(
    developer.getBaseSalary(),
    500.0,
  );

  print("Calculated Salary: $developerSalary");
  developer.processPayment(developerSalary);
}
