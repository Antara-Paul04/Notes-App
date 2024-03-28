import 'package:flutter/material.dart';
import 'package:notes_app/models/todoWidget.dart';
import 'package:notes_app/widgets/listitem.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Todo> todosList = todos;

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
              'Username',
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
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xFFFFE9A64E),),
                        child: IconButton(
                                            onPressed:(){
                        print("Add button pressed");
                        }, icon: Icon(Icons.add, color: const Color.fromARGB(255, 0, 0, 0) ),),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  for (Todo todo in todosList) TodoItem(todo: todo),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}