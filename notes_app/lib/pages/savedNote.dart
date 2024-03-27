import 'package:flutter/material.dart';

class SavedNote extends StatefulWidget {
  final String title;
  final String notetext;

  SavedNote({required this.title, required this.notetext});

  @override
  _SavedNoteState createState() => _SavedNoteState();
}

class _SavedNoteState extends State<SavedNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 50,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              widget.notetext,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
