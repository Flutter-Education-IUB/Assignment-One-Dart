// Question 5: Advanced Features & Mixins (Difficulty: 5/5) ⭐⭐⭐⭐⭐
// TODO: Complete the following requirements:

// 1. Mixin Payable:
//    - Method: double calculateSalary(double baseSalary, double bonus)
//    - Method: void processPayment(double amount)
mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    // TODO: Calculate total salary (base + bonus)
    return baseSalary + bonus;
  }

  void processPayment(double amount) {
    // TODO: Process payment
    print("Payment of \$${amount.toStringAsFixed(2)} processed.");
  }
}

// 2. Mixin Reportable:
//    - Method: String generateReport(String employeeName, String department)
mixin Reportable {
  String generateReport(String employeeName, String department) {
    // TODO: Generate report
    return "Monthly report for $employeeName in $department department";
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
    print("$name (ID: $id, Department: $department)");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary()}");
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
    // TODO: Return manager job title
    return "Manager";
  }

  @override
  double getBaseSalary() {
    // TODO: Return manager base salary
    return 8000.0;
  }

  @override
  void displayInfo() {
    // TODO: Override to show manager-specific info
    print("$name (ID: $id, Department: $department, Team Size: $teamSize)");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary()}");
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
    // TODO: Return developer job title
    return "Senior Developer";
  }

  @override
  double getBaseSalary() {
    // TODO: Return developer base salary
    return 6000.0;
  }

  @override
  void displayInfo() {
    // TODO: Override to show developer-specific info
    print(
        "$name (ID: $id, Department: $department, Language: $programmingLanguage)");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary()}");
  }
}

void main() {
  // 5. Create employees and demonstrate:
  //    - Salary calculation with bonus
  //    - Payment processing
  //    - Report generation (for managers)
  //    - Display all employee information

  // TODO: Create employees
  Manager manager = Manager("John Smith", "M001", "IT", 5);
  Developer developer = Developer("Alice Johnson", "D001", "IT", "Dart");

  // TODO: Demonstrate salary calculation with bonus
  double managerSalary =
      manager.calculateSalary(manager.getBaseSalary(), 1000.0);
  double developerSalary =
      developer.calculateSalary(developer.getBaseSalary(), 500.0);

  // TODO: Display employee information
  manager.displayInfo();
  print("Total Salary with Bonus: \$${managerSalary.toStringAsFixed(2)}");
  manager.processPayment(managerSalary);
  print(manager.generateReport(manager.name, manager.department));
  print("");

  developer.displayInfo();
  print("Total Salary with Bonus: \$${developerSalary.toStringAsFixed(2)}");
  developer.processPayment(developerSalary);
}
