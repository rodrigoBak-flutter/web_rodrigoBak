import 'package:flutter/material.dart';
import 'package:web_rodrigobak/locator.dart';
import 'package:web_rodrigobak/router/route_generator.dart';
import 'package:web_rodrigobak/services/navigation_service.dart';
import 'package:web_rodrigobak/ui/layout/main_layout.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// Este Widget le da inicio a la aplicacion.

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rodrigo Bak',
      initialRoute: '/home',
      //Controlar las rutas de mi Web
      onGenerateRoute: RouteGenerator.generateRouter,
      //Navegacion entre pantallas
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPAge(
          //En caso de no recibir un Child, recibo un Container, ESO NUNCA VA A PASAR!
          child: child ?? Container(),
        );
      },
    );
  }
}
