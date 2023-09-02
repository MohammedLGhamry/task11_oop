import 'person.dart';
import 'company.dart';
import 'manager.dart';
import 'accountant.dart';

abstract class Employee implements Person {
  @override
  String name;
  String phone;
  String address;
  int age;
  int _id;
  int _salary;

  bool takeSalaryIsDone;
  int hoursWork;
  Employee(
    this._id,
    this._salary, {
    required this.address,
    required this.age,
    required this.name,
    required this.phone,
    required this.takeSalaryIsDone,
    required this.hoursWork,
  });

  @override
  int get salary => _salary;
  @override
  int get id => _id;

  void setSalaryForEmployee(int newSalary,
      {Employee? employee,
      Accountant? accountant,
      Manager? manager,
      Company? company}) {
    employee!._salary = newSalary;
  }
}
