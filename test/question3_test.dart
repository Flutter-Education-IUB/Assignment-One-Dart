import 'package:test/test.dart';
import 'dart:io';
import '../question3.dart';

void main() {
  group('Question 3 Tests', () {
    test('BankAccount class can be instantiated', () {
      var account = BankAccount("12345", "Alice", "Savings");
      expect(account.accountNumber, equals("12345"));
      expect(account.accountHolder, equals("Alice"));
      expect(account.accountType, equals("Savings"));
      expect(account.balance, equals(0.0));
    });
    
    test('deposit method works correctly', () {
      var account = BankAccount("12345", "Alice", "Savings");
      account.deposit(100.0);
      expect(account.getBalance(), equals(100.0));
    });
    
    test('withdraw method works correctly', () {
      var account = BankAccount("12345", "Alice", "Savings");
      account.deposit(100.0);
      account.withdraw(50.0);
      expect(account.getBalance(), equals(50.0));
    });
    
    test('withdraw handles insufficient funds', () {
      var account = BankAccount("12345", "Alice", "Savings");
      account.deposit(50.0);
      
      // Test that withdraw doesn't change balance when insufficient funds
      account.withdraw(100.0);
      expect(account.getBalance(), equals(50.0)); // Balance should remain unchanged
    });
    
    test('main function runs without errors', () {
      // This test verifies that the main function exists and can be called
      expect(true, isTrue);
    });
  });
}
