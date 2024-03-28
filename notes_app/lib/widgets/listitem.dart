import 'package:flutter/material.dart';
import 'package:notes_app/models/todoWidget.dart';

class TodoItem extends StatefulWidget {
  final Todo todo;

  const TodoItem({required this.todo});

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
      child: Row(
        children: [
          Icon(
            widget.todo.isDone
                ? Icons.check_box 
                : Icons.check_box_outline_blank_outlined,
            color: widget.todo.isDone ? Color(0xFFFFE9A64E) : null,
          ),
          SizedBox(width: 10),
          Text(
            widget.todo.task!,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
