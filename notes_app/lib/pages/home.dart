import 'package:flutter/material.dart';
import 'package:notes_app/models/noteWidget.dart';
import 'package:notes_app/widgets/notetile.dart';
import 'package:uuid/uuid.dart';
import 'addNote.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Note> notesList = noteList();
  final Uuid uuid = Uuid();

  void _addNoteToList(Note newNote) {
    setState(() {
      notesList.add(newNote);
    });
  }

  void _deleteNote(String id){
    setState((){
      notesList.removeWhere((item)=> item.id==id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: ListView.builder(
              itemCount: notesList.length,
              itemBuilder: (context, index) {
                Note note = notesList[index];
                return NoteTile(note: note, deleteNoteCallback: _deleteNote,);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                elevation: 0,
                backgroundColor: Color(0xFFC0D0F1),
                onPressed: () async {
                  final newNote = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddNotes()),
                  );
                  if (newNote != null) {
                    _addNoteToList(newNote);
                  }
                },
                child: Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
