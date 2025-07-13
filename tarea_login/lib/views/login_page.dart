import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:tarea_login/widgets/textfield.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controlUsuario = TextEditingController();
  final controlContrasena = TextEditingController();

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
                Text('Inicio de sesión', 
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.supervised_user_circle, size: 80.0,color: Colors.blueAccent,),
                SizedBox(height: 20,),
                TextfieldPropio(
                  controller: controlUsuario, 
                  keyboardType: TextInputType.visiblePassword, 
                  borderRadius: BorderRadius.circular(16), 
                  label: 'Ingrese su correo institucional',
                  hintText: 'Correo institucional',
                  contentPadding: EdgeInsets.all(22),
                  prefixIcon: Icon(Icons.email_outlined),
                  
                  ),
                SizedBox(height: 10),
                TextfieldPropio(
                  controller: controlContrasena, 
                  keyboardType: TextInputType.visiblePassword, 
                  borderRadius: BorderRadius.circular(16), 
                  label: 'Ingrese su contraseña',
                  hintText: 'Contraseña',
                  contentPadding: EdgeInsets.all(22),
                  obscureText: false,
                  prefixIcon: Icon(Icons.password_rounded)
                ),
                SizedBox(height: 20,),
                SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.all(16),
                  ),
                  onPressed: () {

                    if (controlUsuario.text.isEmpty ||
                        controlContrasena.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.blueAccent,
                          action: SnackBarAction(
                            label: 'Cerrar',

                            onPressed: () {},
                          ),
                          content: Text('El usuario o contraseña no puede quedar vacío.'),
                        ),
                      );
                      return;
                    }

                    if (! controlUsuario.text.contains('@')) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.red,
                          action: SnackBarAction(
                            label: 'Cerrar',
                            onPressed: () {},
                          ),
                          content: Text('El correo no es válido'),
                        ),
                      );
                      return;
                    }
                    context.goNamed('registro');

                  },
                  child: const Text('Iniciar Sesión'),
                ),)
              ],  
            ),
          ),
          ),
      ),
    );
  }
}