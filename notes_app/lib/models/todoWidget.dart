class Todo {
  String? task;
  String? id;
  bool isDone;

  Todo({required this.task, required this.id, this.isDone= false});
}

List<Todo> todos = [];
