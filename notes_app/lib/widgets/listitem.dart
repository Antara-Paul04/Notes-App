import 'package:flutter/material.dart';
import 'package:notes_app/models/todoWidget.dart';
import 'package:notes_app/pages/home.dart';

class TodoItem extends StatefulWidget {
  final Todo todo;
  final Function(String) onDelete;

  const TodoItem({required this.todo, required this.onDelete});

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
          Spacer(),
          IconButton(onPressed:() 
          {
           widget.onDelete(widget.todo.id.toString());
          }, 
          icon: Icon(Icons.delete, color: Color.fromARGB(255, 146, 146, 146),)),
        ],
      ),
    );
  }
}
