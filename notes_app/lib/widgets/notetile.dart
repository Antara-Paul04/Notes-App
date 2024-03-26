import 'package:flutter/material.dart';
import '../models/noteWidget.dart';
import 'package:notes_app/pages/addNote.dart'; 

class NoteTile extends StatelessWidget {
  final Note note;
  final Function(String) deleteNoteCallback; // Callback function to delete a note

  const NoteTile({Key? key, required this.note, required this.deleteNoteCallback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String truncatedTitle = note.title!.length > 10
        ? note.title!.substring(0, 10) + '...'
        : note.title!;

    return Container(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNotes()),
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
                child: Text(
                  truncatedTitle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => deleteNoteCallback(note.id!),
                      icon: Icon(Icons.delete_outline),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
