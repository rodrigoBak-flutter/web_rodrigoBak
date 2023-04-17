import 'package:flutter/material.dart';
import 'package:web_rodrigobak/ui/shared/custom_app_menu.dart';

class MainLayoutPAge extends StatelessWidget {
  final child;
  const MainLayoutPAge({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        CustomAppMenu(),
        SizedBox(
          width: double.infinity,
          height: 200,
          child: child,
        ),
      ],
    ));
  }
}
