import 'package:flutter/material.dart';
import 'package:web_rodrigobak/ui/shared/custom_app_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const CustomAppMenu(),
            Text('Home'),
          ],
        ),
      ),
    );
  }
}
