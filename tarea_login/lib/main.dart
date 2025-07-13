import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:tarea_login/views/home_page.dart';
import 'package:tarea_login/views/login_page.dart';
import 'package:tarea_login/views/register_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/login',
        routes: [
          GoRoute(
            name: 'login',
            path: '/login',
            builder: (context, state) => LoginPage(),
            
            routes: [
              GoRoute(
                name: 'registro',
                path: '/registro',
                builder: (context, state){
                  return RegisterPage();
                },
              ),
              GoRoute(
                name: 'home',
                path: '/home',
                builder: (context, state){
                  return HomePage();
                },
              )
            ]
            )
        ]
      ),
      title: 'Inicio de sesión',
      );
  }
}