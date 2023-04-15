import 'package:flutter/material.dart';
import 'package:web_rodrigobak/router/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// Este Widget le da inicio a la aplicacion.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rodrigo Bak',
      initialRoute: '/home',
      //Controlar las rutas de mi Web
      onGenerateRoute: RouteGenerator.generateRouter,
    );
  }
}
