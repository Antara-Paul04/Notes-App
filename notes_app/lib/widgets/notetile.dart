import 'package:flutter/material.dart';

class NoteTile extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<NoteTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: ListTile(
          onTap: (){
            print("expanded");
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
                  child: Text('Note 1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
