import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finalproject/sizebox.dart';
import 'package:flutter/material.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);
  static String id = 'AddNewStudentScreen';

  @override
  _AddStudentState createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  String? name;
  String? regno;
  String? department;
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Hostel Management System'),
          elevation: 0,
        ),
        body: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                  children: [
                Image.asset(
                  'assets/images/Security.png',
                  fit: BoxFit.cover,
                  scale: 5,
                ),
                Text(
                  'Add New Resident Student',
                  style: TextStyle(fontSize: 25),
                ),
                CustomeSizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    name = value;
                  },
                ),
                CustomeSizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your registration no',
                    labelText: 'Registration No',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    regno = value;
                  },
                ),
                CustomeSizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your Department',
                    labelText: 'Department',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    department = value;
                  },
                ),
                CustomeSizedBox(height: 20),
                SizedBox(
                  height: 40,
                  width: 320,
                  child: ElevatedButton(
                      onPressed: () {
                        _firestore.collection('student').add({
                          'Name': name,
                          'RegNo': regno,
                          'Department': department
                        });
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text('Student Record has been added Successfully!')));
                      },
                      child: Text('Add Student')),
                ),
                    Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom))
              ]
              ),
            )));
  }
}
