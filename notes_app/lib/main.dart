import 'package:flutter/material.dart';
import './widgets/notetile.dart';
import './models/noteWidget.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Note>notesList=[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 30,
        ),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Color.fromARGB(255, 57, 57, 57)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Color.fromARGB(255, 57, 57, 57)),
                    hintText: 'Search your Notes',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(15),
                    hintStyle: TextStyle(color: Color.fromARGB(255, 57, 57, 57)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 20),
              child: Text(
                'Your Notes',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              for (Note notes in notesList){
                Column(children: Note(id:,notes:),)
              }
            ),
            Padding(
              padding: const EdgeInsets.all(30),
               child: Align(
                  alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        elevation: 0,
                        backgroundColor: Color(0xFFC0D0F1),
                        onPressed: () {
                        print("Add button was pressed");
                        },
                        child: Icon(Icons.add),
                      ),
                )
            )
          ],
        ),
      ),
    );
  }
}
