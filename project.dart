class Project {
  String title;
  int price;
  DateTime receivingDate;
  DateTime deadline;

  bool _isUiDone = false;
  bool _isFlutterDone = false;
  bool _isBackendDone = false;
  bool _isProjectDone = false;

  Project(
      {required this.title,
      required this.price,
      required this.receivingDate,
      required this.deadline});

  bool get isUiDone => _isUiDone;
  bool get isFlutterDone => _isFlutterDone;
  bool get isBackendDone => _isBackendDone;
  bool get isProjectDone => _isProjectDone;

  void uiFinished() {
    _isUiDone = true;

    if (_isUiDone == true && _isFlutterDone == true && _isBackendDone == true) {
      _isProjectDone = true;
    }
  }

  void flutterFinished() {
    _isFlutterDone = true;

    if (_isUiDone == true && _isFlutterDone == true && _isBackendDone == true) {
      _isProjectDone = true;
    }
  }

  void backendFinished() {
    _isBackendDone = true;

    if (_isUiDone == true && _isFlutterDone == true && _isBackendDone == true) {
      _isProjectDone = true;
    }
  }

  @override
  String toString() =>
      'Project title: $title \nProject price: $price \nProject receiving date: $receivingDate \nProject deadline: $deadline';
}
