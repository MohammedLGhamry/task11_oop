import 'accountant.dart';
import 'employee.dart';
import 'manager.dart';
import 'team.dart';

class Company {
  String name;
  String address;
  String phone;
  int account;
  Manager manager;
  Accountant accountant;
  List<Team>? listOfTeams = [];
  List<Employee>? listOfEmployee = [];

  Company({
    required this.name,
    required this.address,
    required this.phone,
    required this.account,
    required this.manager,
    required this.accountant,
    this.listOfTeams,
    this.listOfEmployee,
  });

  bool isEmployeeExist(Employee employee) {
    if (listOfEmployee!.contains(employee)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  String toString() =>
      'Company Name: $name \nAddress: $address \nPhone: $phone \nAccount: $account \nManager: $Manager \nAccountant: $accountant \nTeams: $listOfTeams \nEmpolyees: $listOfEmployee';
}
