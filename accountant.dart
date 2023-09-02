import 'employee.dart';
import 'manager.dart';
import 'company.dart';

class Accountant extends Employee {
  Accountant(
    super.id,
    super.salary, {
    required super.address,
    required super.age,
    required super.name,
    required super.phone,
    required super.takeSalaryIsDone,
    required super.hoursWork,
  });

  void calculateSalary(Employee employee, Company company) {
    if (company.listOfEmployee!.contains(employee)) {
      if (employee.hoursWork == 200) {
        print('Salary\t\t: ${employee.salary}');
      } else if (employee.hoursWork > 200) {
        int bouns = employee.hoursWork - 200;
        print('Salary\t\t: ${employee.salary + (bouns * 10)}');
      } else if (employee.hoursWork < 200) {
        int minus = 200 - employee.hoursWork;
        print('Salary\t\t: ${employee.salary - (minus * 10)}');
      }
    } else {
      print('This developer not exist in team');
    }
  }

  void sendSalary(Employee employee) {
    if (employee.takeSalaryIsDone == false) {
      employee.takeSalaryIsDone = true;
    } else {
      print('This employee ${employee.name} has taken his salary!');
    }
  }

  void addBonusEmployee(
      {required int bouns,
      required Employee employee,
      required Company company}) {
    if (id == company.accountant.id &&
        company.listOfEmployee!.contains(employee)) {
      super.setSalaryForEmployee((employee.salary + bouns),
          employee: employee, company: company);
      print("Added bouns successfully!");
    } else {
      print('You are not accountant of ${company.name} company!');
    }
  }

  void minusFromEmployee(
      {required int minus,
      required Employee employee,
      required Company company}) {
    if (id == company.accountant.id &&
        company.listOfEmployee!.contains(employee)) {
      super.setSalaryForEmployee((employee.salary - minus),
          employee: employee, company: company);
      print("Minus done successfully!");
    } else {
      print('You are not accountant of ${company.name} company!');
    }
  }

  @override
  void setSalaryForEmployee(
    int newSalary, {
    Employee? employee,
    Accountant? accountant,
    Manager? manager,
    Company? company,
  }) {
    if (id == company?.accountant.id &&
        company!.listOfEmployee!.contains(employee)) {
      super.setSalaryForEmployee(newSalary, employee: employee);

      print("Set salary successfully!");
    } else {
      print('You are not accountant of ${company?.name} company!');
    }
  }
}
