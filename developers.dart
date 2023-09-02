import 'employee.dart';
import 'accountant.dart';
import 'manager.dart';
import 'company.dart';

class FlutterDeveloper extends Employee {
  bool canUseBloc;
  bool canUseFireBase;
  bool canUseCleanArc;

  FlutterDeveloper(
    super.id,
    super.salary, {
    required super.address,
    required super.age,
    required super.name,
    required super.phone,
    required super.takeSalaryIsDone,
    required super.hoursWork,
    required this.canUseBloc,
    required this.canUseFireBase,
    required this.canUseCleanArc,
  });

  @override
  void setSalaryForEmployee(
    int newSalary, {
    Employee? employee,
    Accountant? accountant,
    Manager? manager,
    Company? company,
  }) {
    print('Only Accountant or Manager can set salaries!');
  }

  @override
  String toString() =>
      'Name: $name\nID: $id\nAge: $age\nAddress: $address\nPhone: $phone\nHours work: $hoursWork\nSalary: $salary\nSalary done: $takeSalaryIsDone\nCanUseCleanArc: $canUseCleanArc\nCanUseFirebase: $canUseFireBase\nCanUseBloc: $canUseBloc';
}

class BackendDeveloper extends Employee {
  bool canUseExpressJs;
  bool canUseDjango;
  bool canUseLaravel;

  BackendDeveloper(
    super.id,
    super.salary, {
    required super.address,
    required super.age,
    required super.name,
    required super.phone,
    required super.takeSalaryIsDone,
    required super.hoursWork,
    required this.canUseExpressJs,
    required this.canUseDjango,
    required this.canUseLaravel,
  });

  @override
  void setSalaryForEmployee(
    int newSalary, {
    Employee? employee,
    Accountant? accountant,
    Manager? manager,
    Company? company,
  }) {
    print('Only Accountant or Manager can set salaries!');
  }

  @override
  String toString() =>
      'Name: $name\nID: $id\nAge: $age\nAddress: $address\nPhone: $phone\nHours work: $hoursWork\nSalary: $salary\nSalary done: $takeSalaryIsDone\nCanUseLaravel: $canUseLaravel\nCanUseDjango: $canUseDjango\nCanUseExpressJs: $canUseExpressJs';
}

class UiUXDeveloper extends Employee {
  bool canUseFigma;
  bool canUseAdobeXd;

  UiUXDeveloper(
    super.id,
    super.salary, {
    required super.address,
    required super.age,
    required super.name,
    required super.phone,
    required super.takeSalaryIsDone,
    required super.hoursWork,
    required this.canUseFigma,
    required this.canUseAdobeXd,
  });

  @override
  void setSalaryForEmployee(
    int newSalary, {
    Employee? employee,
    Accountant? accountant,
    Manager? manager,
    Company? company,
  }) {
    print('Only Accountant or Manager of ${company?.name}can set salaries!');
  }

  @override
  String toString() =>
      'Name: $name\nID: $id\nAge: $age\nAddress: $address\nPhone: $phone\nHours work: $hoursWork\nSalary: $salary\nSalary done: $takeSalaryIsDone\nCanUseFigma: $canUseFigma\nCanUseAdobeXd: $canUseAdobeXd';
}
