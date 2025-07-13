import 'package:flutter/material.dart';
//import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //final ControlUsuario = TextEditingController();
  //final ControlContraseña = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Inicio de sesión', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          ),
      ),
    );
  }
}