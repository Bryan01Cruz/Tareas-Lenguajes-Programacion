import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(),
      appBar: AppBar(title: Text('Registro')),
      body: Center(child: Text('Register Page')),
    );
  }
}