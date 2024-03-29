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
      padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                widget.todo.isDone = !widget.todo.isDone;
              });
            },
            icon: widget.todo.isDone
                ? Icon(Icons.check_box, color: Color(0xFFC0D0F1))
                : Icon(Icons.check_box_outline_blank_outlined),
          ),
          SizedBox(width: 10),
          Text(
            widget.todo.task!,
            style: widget.todo.isDone? TextStyle(fontSize: 20, color: Color.fromARGB(255, 147, 147, 147)): TextStyle(fontSize:20),
          ),
        ],
      ),
    );
  }
}
