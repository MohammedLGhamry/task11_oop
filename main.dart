import 'accountant.dart';
import 'manager.dart';
import 'developers.dart';
import 'project.dart';
import 'team.dart';
import 'company.dart';

void main() {
  Accountant accountant = Accountant(01, 100000,
      name: 'M',
      phone: '0123456',
      address: 'Cairo',
      age: 27,
      takeSalaryIsDone: false,
      hoursWork: 100);

  Accountant accountant02 = Accountant(02, 100000,
      name: 'M',
      phone: '0123456',
      address: 'Cairo',
      age: 27,
      takeSalaryIsDone: false,
      hoursWork: 100);

  Manager manager = Manager(11, 1000,
      name: 'G',
      phone: '0159687',
      address: 'Cairo',
      age: 50,
      takeSalaryIsDone: false,
      hoursWork: 150);

  Manager teamleader = Manager(10, 1000,
      name: 'G',
      phone: '0159687',
      address: 'Cairo',
      age: 50,
      takeSalaryIsDone: false,
      hoursWork: 150);

  FlutterDeveloper flutterDeveloper01 = FlutterDeveloper(01, 1000,
      canUseBloc: false,
      canUseCleanArc: true,
      canUseFireBase: false,
      name: 'M',
      phone: '0123456',
      address: 'Cairo',
      age: 27,
      takeSalaryIsDone: false,
      hoursWork: 250);

  BackendDeveloper backendDeveloper01 = BackendDeveloper(02, 1000,
      canUseDjango: false,
      canUseExpressJs: true,
      canUseLaravel: true,
      name: 'A',
      phone: '456789',
      address: 'Giza',
      age: 22,
      takeSalaryIsDone: false,
      hoursWork: 200);

  UiUXDeveloper uiUxDeveloper01 = UiUXDeveloper(03, 1000,
      canUseAdobeXd: true,
      canUseFigma: false,
      name: 'K',
      phone: '014789',
      address: 'Egypt',
      age: 25,
      takeSalaryIsDone: false,
      hoursWork: 150);

  Project project = Project(
      title: 'App',
      price: 2000,
      receivingDate: DateTime.parse('2023-09-01'),
      deadline: DateTime.parse('2023-09-15'));

  Project project02 = Project(
      title: 'Website',
      price: 5000,
      receivingDate: DateTime.parse('2023-09-01'),
      deadline: DateTime.parse('2023-11-15'));

  Team team = Team(
    teamName: 'Instant',
    teamLeader: teamleader,
    flutterGroup: [],
    backendGroup: [],
    uiUxGroup: [],
    allTeamDeveloper: [],
    projects: [],
  );

  Company company = Company(
      name: 'Instant',
      address: 'Giza',
      phone: '01234567',
      account: 1,
      accountant: accountant,
      manager: teamleader,
      listOfEmployee: [flutterDeveloper01, backendDeveloper01, teamleader]);

  //////////////////
  print('${' ' * 50} Flutter Developer Info ${' ' * 50}');
  print('${'-' * 120}');
  print(flutterDeveloper01);

  //////////////////
  print('\n${' ' * 50} Show Team Details ${' ' * 50}');
  print('${'-' * 120}');
  team.showNameAllDevelopers();

  //team.showNamesFlutterDevelopers();
  //team.showNamesBackendDevelopers();
  //team.showNamesUiUxDevelopers();

  //////////////////
  print('\n${' ' * 50} Add Developers Names ${' ' * 50}');
  print('${'-' * 120}');

  team.addEmployeeToTeam(flutterDeveloper01);
  team.addEmployeeToTeam(backendDeveloper01);
  team.addEmployeeToTeam(uiUxDeveloper01);

  //////////////////
  print('\n${' ' * 50} Show Team Details ${' ' * 50}');
  print('${'-' * 120}');
  team.showNameAllDevelopers();

  //////////////////
  print('\n${' ' * 50} Add Developers Names ${' ' * 50}');
  print('${'-' * 120}');

  team.addEmployeeToTeam(uiUxDeveloper01);
  team.addEmployeeToTeam(uiUxDeveloper01);
  team.addEmployeeToTeam(uiUxDeveloper01);
  team.addEmployeeToTeam(flutterDeveloper01);
  team.addEmployeeToTeam(backendDeveloper01);
  team.addEmployeeToTeam(flutterDeveloper01);
  team.addEmployeeToTeam(backendDeveloper01);
  team.addEmployeeToTeam(manager);

  //////////////////
  print('\n${' ' * 50} Remove Developers Names ${' ' * 50}');
  print('${'-' * 120}');

  team.removeEmployeeFromTeam(uiUxDeveloper01);
  team.removeEmployeeFromTeam(flutterDeveloper01);
  team.removeEmployeeFromTeam(accountant);

  //////////////////
  print('\n${' ' * 50} Show Team Details ${' ' * 50}');
  print('${'-' * 120}');
  team.showNameAllDevelopers();

  ////////////////////
  print('\n${' ' * 50} Show All Projects ${' ' * 50}');
  print('${'-' * 120}');
  team.getAllProjects();

  ////////////////////
  print('\n${' ' * 50} Add New Project ${' ' * 50}');
  print('${'-' * 120}');

  print('\nWrong team leader ID\n${'-' * 30}');
  team.addProject(project, 01);
  print('\nCorrect team leader ID\n${'-' * 30}');
  team.addProject(project, 10); // team leader id 10
  print('\nProject takes more than 30 days\n${'-' * 30}');
  team.addProject(project02, 10); // project 02

  ////////////////////
  print('\n${' ' * 50} Check Project Status ${' ' * 50}');
  print('${'-' * 120}');
  team.groupBackendFinished(project, 01); // team leader id 10
  print('Project is Done? ${project.isProjectDone}');
  team.groupBackendFinished(project, 10);
  print('Project is Done? ${project.isProjectDone}');
  team.groupFlutterFinished(project, 10);
  print('Project is Done? ${project.isProjectDone}');
  team.groupUiFinished(project, 10);
  print('Project is Done? ${project.isProjectDone}');

  ////////////////////
  print('\n${' ' * 50} Calculate Backend Salary *1000* 200hrs ${' ' * 50}');
  print('${'-' * 120}');

  accountant.calculateSalary(backendDeveloper01, company);
  print('Salary taken\t: ${backendDeveloper01.takeSalaryIsDone}');
  accountant.sendSalary(backendDeveloper01);
  print('Salary taken\t: ${backendDeveloper01.takeSalaryIsDone}');

  ////////////////////
  print('\n${' ' * 50} Calculate Flutter Salary *1000* 250hrs ${' ' * 50}');
  print('${'-' * 120}');

  accountant.calculateSalary(flutterDeveloper01, company);

  ///////////////////
  print('\n${' ' * 50} Calculate Team leader Salary *1000* 150hrs ${' ' * 50}');
  print('${'-' * 120}');

  accountant.calculateSalary(teamleader, company);

  ///////////////////
  print('\n${' ' * 50} Set Salary for Employee ${' ' * 50}');
  print('${'-' * 120}');

  print('\nDeveloper try to set\n${'-' * 50}');
  flutterDeveloper01.setSalaryForEmployee(2000);

  print('\nSet 2000 Salary by Accountant:\n${'-' * 50}');
  accountant.setSalaryForEmployee(2000,
      employee: flutterDeveloper01, company: company);
  print('Salary\t\t: ${flutterDeveloper01.salary}');

  print('\nSet 2000 Salary by Manager in other company:\n${'-' * 70}');
  manager.setSalaryForEmployee(2000,
      employee: flutterDeveloper01, company: company);
  print('Salary\t\t: ${flutterDeveloper01.salary}');

  print('\nAdd 250 bouns :\n${'-' * 50}');
  accountant.addBonusEmployee(
      bouns: 250, employee: flutterDeveloper01, company: company);
  print('Salary\t\t: ${flutterDeveloper01.salary}');

  print('\nAccountant from other company\n${'-' * 50}');
  accountant02.minusFromEmployee(
      minus: 250, employee: flutterDeveloper01, company: company);
  print('Salary\t\t: ${flutterDeveloper01.salary}');

  print('\nMinus 200 :\n${'-' * 50}');
  accountant.minusFromEmployee(
      minus: 200, employee: flutterDeveloper01, company: company);
  print('Salary\t\t: ${flutterDeveloper01.salary}');
}
