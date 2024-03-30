import 'package:flutter/material.dart';
import 'package:notes_app/pages/homeNote.dart';
import 'package:notes_app/models/todoWidget.dart';
import 'package:notes_app/widgets/listitem.dart';
import 'package:uuid/uuid.dart';

class Homepage extends StatefulWidget {
  String username;
  Homepage({required this.username});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Todo> todosList = todos;
  final Uuid uuid = Uuid();
  bool showAddTextField = false;

  void addItem(String task) {
    String id = uuid.v4();
    setState(() {
      todosList.add(Todo(id: id, task: task));
    });
  }
  void deleteItem(String id){
    setState(() {
      todosList.removeWhere((task) => task.id==id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 50,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning,',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            ),
            Text(
              widget.username,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: Color.fromARGB(255, 130, 130, 130),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Things to do',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xFFC0D0F1),),
                        child: IconButton(
                          onPressed:(){
                            setState(() {
                              showAddTextField = true;
                            });
                          },
                          icon: Icon(Icons.add, color: Color.fromARGB(255, 0, 0, 0), size: 30,),
                        ),
                      ),
                    ],
                  ),
                  if(showAddTextField)
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your task'
                        ),
                      onSubmitted: (value) {
                        addItem(value);
                        setState(() {
                          showAddTextField = false;
                        });
                        deleteItem(value);
                      },
                    ),
                  SizedBox(height: 20),
                  for (Todo todo in todosList) TodoItem(
                    todo: todo,
                    onDelete: (id) {
                      deleteItem(id);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height:20),

            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              tileColor: Colors.transparent,
              title: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFC0D0F1), Color.fromARGB(255, 237, 243, 255)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 20, 10, 20),
                      child: Text('Your Notes',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
