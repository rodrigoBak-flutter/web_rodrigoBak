import 'package:flutter/material.dart';
import 'package:web_rodrigobak/ui/pages/home_page.dart';
import 'package:web_rodrigobak/ui/pages/page404.dart';
import 'package:web_rodrigobak/ui/pages/sobreMi_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return _fadeRoute(HomePage(), '/home');
      case '/sobreMi':
        return _fadeRoute(SobreMiPage(), '/sobreMi');
      default:
        return _fadeRoute(Page404(), '/404');
    }
  }

  //Transicion entre paginas
  static PageRoute _fadeRoute(Widget child, String ruteName) {
    return PageRouteBuilder(
      settings: RouteSettings(name: ruteName),
        pageBuilder: (_, __, ____) => child,
        transitionDuration: Duration(milliseconds: 200),
        transitionsBuilder: (_, animation, __, ____) => FadeTransition(
              opacity: animation,
              child: child,
            ));
  }
}
