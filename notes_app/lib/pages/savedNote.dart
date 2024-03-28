import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  widget.notetext,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: FloatingActionButton(
                backgroundColor: Color(0xFFC0D0F1),
                elevation: 0,
                onPressed: () {
                  print('Edit button pressed');
                },
                child: Icon(Icons.edit),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
