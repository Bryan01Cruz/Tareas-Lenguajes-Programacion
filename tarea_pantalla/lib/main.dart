import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,

            children: [
              Text('Welcome to', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
              Text('Reminders', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              
            ],
          ),
        ),
      ),
    );
  }
}