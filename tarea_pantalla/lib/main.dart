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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(Icons.add, size: 50.0, color: Colors.green,),
                    SizedBox(width: 16,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Quick Creation', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
                        Text('Simply type in your list, ask Siri, or add'),
                        Text('reminder from your Calendar app.')
                      ],
                    )
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(Icons.shopping_cart, size: 50.0, color: Colors.deepOrange,),
                    SizedBox(width: 16,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Grocery Shopping', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
                        Text('Create a Grocery List that automatically'),
                        Text('sorts items you add by category.')
                      ],
                    )
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(Icons.share, size: 50.0, color: Colors.amber,),
                    SizedBox(width: 16,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Easy Sharing', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
                        Text('Collaborate on a list, and even assign'),
                        Text('individual tasks.')
                      ],
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}