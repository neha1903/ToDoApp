class Task {
  late String name;
  bool isDone = false;

  Task({required this.name, required this.isDone});

  void toggleIsDone() {
    isDone = !isDone;
  }
}
