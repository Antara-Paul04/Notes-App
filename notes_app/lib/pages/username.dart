import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/pages/home.dart';
import 'package:notes_app/pages/homeNote.dart';

class Username extends StatelessWidget {
  TextEditingController username= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC0D0F1),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter your username:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextField(
                controller: username,
                decoration: InputDecoration(
                  hintText: 'Username',
                  contentPadding: EdgeInsets.all(15),
                  hintStyle: TextStyle(color: Color.fromARGB(255, 57, 57, 57)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage(username: username.text)),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Proceed',
                        style: TextStyle(
                          color: Color(0xFFC0D0F1),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}
