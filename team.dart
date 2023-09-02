import 'employee.dart';
import 'developers.dart';
import 'project.dart';

class Team {
  String teamName;
  Employee teamLeader;
  List<FlutterDeveloper> flutterGroup;
  List<BackendDeveloper> backendGroup;
  List<UiUXDeveloper> uiUxGroup;
  List<Employee> allTeamDeveloper;
  List<Project> projects;

  Team({
    required this.teamName,
    required this.teamLeader,
    required this.flutterGroup,
    required this.backendGroup,
    required this.uiUxGroup,
    required this.allTeamDeveloper,
    required this.projects,
  });

  void showNamesFlutterDevelopers() {
    if (flutterGroup.isEmpty) {
      print('There is no Flutter developers!');
    } else {
      print('Flutter Developers:');
      for (var item in flutterGroup) {
        print('Name: ${item.name}');
      }
    }
  }

  void showNamesBackendDevelopers() {
    if (backendGroup.isEmpty) {
      print('There is no Backend developers!');
    } else {
      print('\nBackend Developers:');
      for (var item in backendGroup) {
        print('Name: ${item.name}');
      }
    }
  }

  void showNamesUiUxDevelopers() {
    if (uiUxGroup.isEmpty) {
      print('There is no Ui\\Ux developers!');
    } else {
      print('\nUi\\Ux Developers:');
      for (var item in uiUxGroup) {
        print('Name: ${item.name}');
      }
    }
  }

  void showNameAllDevelopers() {
    if (allTeamDeveloper.isEmpty) {
      print('There is no developers!');
    } else {
      print('\nAll team Developers:');
      for (var item in allTeamDeveloper) {
        print('Name: ${item.name}');
      }
    }
  }

  void addEmployeeToTeam(Employee employee) {
    if (employee is FlutterDeveloper) {
      if (flutterGroup.length <= 8) {
        flutterGroup.add(employee);
        allTeamDeveloper.add(employee);
        print('Added ${employee.name} to Flutter group!');
      } else {
        print('Flutter group is full!');
      }
    } else if (employee is BackendDeveloper) {
      if (backendGroup.length <= 5) {
        backendGroup.add(employee);
        allTeamDeveloper.add(employee);
        print('Added ${employee.name} to Backend group!');
      } else {
        print('Backend group is full!');
      }
    } else if (employee is UiUXDeveloper) {
      if (uiUxGroup.length <= 2) {
        uiUxGroup.add(employee);
        allTeamDeveloper.add(employee);
        print('Added ${employee.name} to UI/UX group!');
      } else {
        print('UI/UX group is full!');
      }
    } else {
      print(
          'Can\'t add this employee , the team want just Flutter or Backend or UI/UX developer!');
    }
  }

  void removeEmployeeFromTeam(Employee employee) {
    if (employee is FlutterDeveloper) {
      if (flutterGroup.isEmpty) {
        print('Flutter group is empty!');
      } else if (flutterGroup.contains(employee)) {
        flutterGroup.remove(employee);
        allTeamDeveloper.remove(employee);
        print('Removed ${employee.name} from Flutter group!');
      } else {
        print('This empolyee is not exist!');
      }
    } else if (employee is BackendDeveloper) {
      if (backendGroup.isEmpty) {
        print('Backend group is empty!');
      } else if (backendGroup.contains(employee)) {
        backendGroup.remove(employee);
        allTeamDeveloper.remove(employee);
        print('Removed ${employee.name} from Backend group!');
      } else {
        print('This empolyee is not exist!');
      }
    } else if (employee is UiUXDeveloper) {
      if (uiUxGroup.isEmpty) {
        print('UI/UX group is empty!');
      } else if (uiUxGroup.contains(employee)) {
        uiUxGroup.remove(employee);
        allTeamDeveloper.remove(employee);
        print('Removed ${employee.name} from UI/UX group!');
      } else {
        print('This empolyee is not exist!');
      }
    } else {
      print(
          'This employee can\'t be removed , the team only has a Flutter and Backend and UI/UX developer!');
    }
  }

  void addProject(Project project, int teamLeaderId) {
    if (teamLeaderId == teamLeader.id) {
      if (flutterGroup.length >= 2 &&
          backendGroup.length >= 2 &&
          uiUxGroup.length >= 1) {
        int days = project.deadline.difference(project.receivingDate).inDays;

        if (days < 30) {
          projects.add(project);
          print('Added project successfully!');
        } else {
          print('The team can\'t finish any project before 30 days!');
        }
      } else {
        print(
            'this team is not complete , The team must contain at least one ui developer, at least 2 flutter developer, and at least 2 backend developer!');
      }
    } else {
      print(
          'You are not team leader , if you are team leader please enter your correct id!');
    }
  }

  void getAllProjects() {
    if (projects.isEmpty) {
      print('The team doesn\'t have any project');
    } else {
      print('\nProjects:\n');
      for (var item in projects) {
        print(item);
      }
    }
  }

  void groupUiFinished(Project project, int teamLeaderId) {
    if (teamLeaderId == teamLeader.id) {
      if (projects.contains(project)) {
        project.uiFinished();
      } else {
        print('This Project is not exist with the team!');
      }
    } else {
      print(
          'You are not team leader , if you are team leader please enter your correct id!');
    }
  }

  void groupFlutterFinished(Project project, int teamLeaderId) {
    if (teamLeaderId == teamLeader.id) {
      if (projects.contains(project)) {
        project.flutterFinished();
      } else {
        print('This Project is not exist with the team!');
      }
    } else {
      print(
          'You are not team leader , if you are team leader please enter your correct id!');
    }
  }

  void groupBackendFinished(Project project, int teamLeaderId) {
    if (teamLeaderId == teamLeader.id) {
      if (projects.contains(project)) {
        project.backendFinished();
      } else {
        print('This Project is not exist with the team!');
      }
    } else {
      print(
          'You are not team leader , if you are team leader please enter your correct id!');
    }
  }
}
