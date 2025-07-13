import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Registrar nuevo usuario', 
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.network_locked, size: 80.0,color: Colors.blueAccent,),
              ],  
            ),
          ),
          ),
      ),
    );
  }
}