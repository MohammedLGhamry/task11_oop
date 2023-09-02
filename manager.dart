import 'employee.dart';
import 'accountant.dart';
import 'company.dart';

class Manager extends Employee {
  Manager(
    super.id,
    super.salary, {
    required super.address,
    required super.age,
    required super.name,
    required super.phone,
    required super.takeSalaryIsDone,
    required super.hoursWork,
  });

  @override
  void setSalaryForEmployee(
    int newSalary, {
    Employee? employee,
    Accountant? accountant,
    Manager? manager,
    Company? company,
  }) {
    if (id == company?.manager.id &&
        company!.listOfEmployee!.contains(employee)) {
      super.setSalaryForEmployee(newSalary, company: company);

      print("Set salary successfully!");
    } else {
      print('You are not manager of ${company?.name} company!');
    }
  }
}
