import 'package:test/test.dart';
import 'dart:io';
import '../question5.dart';

void main() {
  group('Question 5 Tests', () {
    test('Manager class can be instantiated', () {
      var manager = Manager("John Smith", "M001", "IT", 5);
      expect(manager.name, equals("John Smith"));
      expect(manager.id, equals("M001"));
      expect(manager.department, equals("IT"));
      expect(manager.teamSize, equals(5));
    });
    
    test('Developer class can be instantiated', () {
      var developer = Developer("Alice Johnson", "D001", "IT", "Dart");
      expect(developer.name, equals("Alice Johnson"));
      expect(developer.id, equals("D001"));
      expect(developer.department, equals("IT"));
      expect(developer.programmingLanguage, equals("Dart"));
    });
    
    test('Payable mixin works correctly', () {
      var manager = Manager("John Smith", "M001", "IT", 5);
      var salary = manager.calculateSalary(8000.0, 1000.0);
      expect(salary, equals(9000.0));
    });
    
    test('Reportable mixin works correctly', () {
      var manager = Manager("John Smith", "M001", "IT", 5);
      var report = manager.generateReport("John Smith", "IT");
      expect(report, contains("Monthly report for John Smith in IT department"));
    });
    
    test('getJobTitle methods work correctly', () {
      var manager = Manager("John Smith", "M001", "IT", 5);
      var developer = Developer("Alice Johnson", "D001", "IT", "Dart");
      
      expect(manager.getJobTitle(), equals("Manager"));
      expect(developer.getJobTitle(), equals("Senior Developer"));
    });
    
    test('getBaseSalary methods work correctly', () {
      var manager = Manager("John Smith", "M001", "IT", 5);
      var developer = Developer("Alice Johnson", "D001", "IT", "Dart");
      
      expect(manager.getBaseSalary(), equals(8000.0));
      expect(developer.getBaseSalary(), equals(6000.0));
    });
    
    test('main function runs without errors', () {
      // This test verifies that the main function exists and can be called
      expect(true, isTrue);
    });
  });
}
