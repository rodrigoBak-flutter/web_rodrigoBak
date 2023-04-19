import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_rodrigobak/const.dart';
import 'package:web_rodrigobak/lang/controllers/language_controller.dart';
import 'package:web_rodrigobak/lang/utils/message_utils.dart';
import 'package:web_rodrigobak/locator.dart';
import 'package:web_rodrigobak/router/route_generator.dart';
import 'package:web_rodrigobak/services/navigation_service.dart';
import 'package:web_rodrigobak/ui/layout/main_layout.dart';
import 'package:web_rodrigobak/lang/utils/dep.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  Map<String, Map<String, String>> _languages = await dep.init();
  runApp(
    MyApp(
      languages: _languages,
    ),
  );
}

class MyApp extends StatelessWidget {
  final Map<String, Map<String, String>> languages;

  const MyApp({required this.languages});
// Este Widget le da inicio a la aplicacion.

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return GetBuilder<LocalizationController>(
        builder: (localizationController) {
      return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          locale: localizationController.locale,
          translations: Messages(languages: languages),
          fallbackLocale: Locale(AppConstants.languages[0].languageCode,
              AppConstants.languages[0].countryCode),
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
          });
    });
  }
}
