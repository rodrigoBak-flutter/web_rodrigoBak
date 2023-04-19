import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

////Importacion para saber si estoy en la Web o en Movil
import 'package:flutter/foundation.dart' show kIsWeb;

///

import 'package:web_rodrigobak/ui/views/home_view.dart';
import 'package:web_rodrigobak/ui/views/languages_view.dart';
import 'package:web_rodrigobak/ui/views/sobreMi_view.dart';
import 'package:web_rodrigobak/ui/views/view404.dart';

class RouteGenerator {
  static Route<dynamic> generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return _fadeRoute(HomeView(), '/home');
      case '/sobreMi':
        return _fadeRoute(SobreMiView(), '/sobreMi');
      case '/language':
        return _fadeRoute(languagesView(), '/language');
      default:
        return _fadeRoute(View404(), '/404');
    }
  }

  //Transicion entre paginas
  static PageRoute _fadeRoute(Widget child, String ruteName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: ruteName),
        pageBuilder: (_, __, ____) => child,
        transitionDuration: const Duration(milliseconds: 200),
        transitionsBuilder: (_, animation, __, ____) => (kIsWeb)
            //Transition Web
            ? FadeTransition(
                opacity: animation,
                child: child,
              )
            //Transition Movil
            : CupertinoPageTransition(
                primaryRouteAnimation: animation,
                secondaryRouteAnimation: __,
                child: child,
                linearTransition: true,
              ));
  }
}
