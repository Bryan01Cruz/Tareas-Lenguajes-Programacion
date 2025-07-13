import 'package:flutter/material.dart';
import 'package:tarea_login/widgets/textfield.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final usuario = TextEditingController();
  final correo = TextEditingController();
  final telefono = TextEditingController();
  final contrasena = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text('Registrar un nuevo', 
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Text('usuario', 
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.new_label_rounded, size: 80.0,color: Colors.blueAccent,),
                SizedBox(height: 20,),
                TextfieldPropio(
                  controller: usuario, 
                  keyboardType: TextInputType.visiblePassword, 
                  borderRadius: BorderRadius.circular(16), 
                  label: 'Ingrese su nombre',
                  hintText: 'Nombre',
                  contentPadding: EdgeInsets.all(22),
                  ),
                SizedBox(height: 10,),
                TextfieldPropio(
                  controller: correo, 
                  keyboardType: TextInputType.visiblePassword, 
                  borderRadius: BorderRadius.circular(16), 
                  label: 'Ingrese su correo institucional',
                  hintText: 'Correo institucional',
                  contentPadding: EdgeInsets.all(22),
                  ),
                SizedBox(height: 10,),
                TextfieldPropio(
                  controller: telefono, 
                  keyboardType: TextInputType.visiblePassword, 
                  borderRadius: BorderRadius.circular(16), 
                  label: 'Ingrese su numero de teléfono',
                  hintText: 'Teléfono',
                  contentPadding: EdgeInsets.all(22),
                  ),
                SizedBox(height: 10,),
                TextfieldPropio(
                  controller: contrasena, 
                  keyboardType: TextInputType.visiblePassword, 
                  borderRadius: BorderRadius.circular(16), 
                  label: 'Ingrese una contraseña',
                  hintText: 'Contraseña',
                  contentPadding: EdgeInsets.all(22),
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

                    if (usuario.text.isEmpty ||
                        correo.text.isEmpty || telefono.text.isEmpty || contrasena.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.blueAccent,
                          action: SnackBarAction(
                            label: 'Cerrar',

                            onPressed: () {},
                          ),
                          content: Text('Ingrese todos los datos.'),
                        ),
                      );
                      return;
                    }

                    if (! correo.text.contains('@unah.hn')) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.red,
                          action: SnackBarAction(
                            label: 'Cerrar',
                            onPressed: () {},
                          ),
                          content: Text('El correo no es válido.'),
                        ),
                      );
                      return;
                    }

                    if (contrasena.text.length < 6) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.red,
                          action: SnackBarAction(
                            label: 'Cerrar',
                            onPressed: () {},
                          ),
                          content: Text('La contraseña debe tener al menos 6 caracteres.'),
                        ),
                      );
                      return;
                    }

                  },
                  child: const Text('Registrar usuario'),
                ),)
              ],  
            ),
          ),
          ),
      ),
    );
  }
}