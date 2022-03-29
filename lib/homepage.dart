import 'package:finalproject/register.dart';
import 'package:finalproject/sizebox.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Hostel Management System'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              children: [
                CustomeSizedBox(height: 60),
                Image.asset(
                    'assets/images/NTU.png',
                    fit: BoxFit.cover,
                    scale: 9
                ),
                const Text('Welcome to NTU Hostel',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                CustomeSizedBox(height: 50),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                      child: const Text('Login', textScaleFactor: 1.5,)
                  ),
                ),
                CustomeSizedBox(height: 50),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, RegisterScreen.id);
                  },
                      child: const Text('Register', textScaleFactor: 1.5,)
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
