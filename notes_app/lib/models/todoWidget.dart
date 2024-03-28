class Todo {
  String? task;
  String? id;
  bool isDone;

  Todo({required this.task, required this.id, this.isDone= false});
}

List<Todo> todos = [
  Todo(task: 'Task 1', id: '1', isDone: true),
  Todo(task: 'Task 2', id: '2'),
  Todo(task: 'Task 3', id: '3'),
];
