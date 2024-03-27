import 'package:flutter/material.dart';
import 'package:notes_app/pages/home.dart';
import 'package:notes_app/widgets/notetile.dart';
import 'package:notes_app/models/noteWidget.dart';
import 'package:uuid/uuid.dart';
import 'package:notes_app/pages/savedNote.dart';


class AddNotes extends StatefulWidget {
  @override
  _AddNotesState createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  TextEditingController titlecontroller= TextEditingController();
  TextEditingController textcontroller= TextEditingController();

  void _addNote() {
    String id = Uuid().v4();
    Note newNote = Note(id: id, title: titlecontroller.text, notetext:textcontroller.text, isSaved: true);
    Navigator.pop(context, newNote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 50,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
            child: TextField(
              controller: titlecontroller,
              decoration: InputDecoration(
                hintText: 'Title',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 57, 57, 57),
                  fontSize: 40,
                ),
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextField(
                    controller: textcontroller,
                    decoration: InputDecoration(
                      hintText: 'Add your notes here',
                      hintStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 57, 57, 57),
                        fontSize: 20,
                      ),
                      border: InputBorder.none,
                    ),
                    maxLines: null,
                  ),
                ),
                Positioned(
                  bottom: 30,
                  right: 30,
                  child: FloatingActionButton(
                    elevation: 0,
                    backgroundColor: Color(0xFFC0D0F1),
                    onPressed:(){
                       _addNote();
                       SavedNote(title: titlecontroller.text, notetext: textcontroller.text);
                    },
                    child: Icon(Icons.save_outlined),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

