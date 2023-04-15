import 'package:flutter/material.dart';
import 'package:web_rodrigobak/ui/shared/custom_app_menu.dart';

class SobreMiPage extends StatelessWidget {
  const SobreMiPage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const CustomAppMenu(),
            Text('Sobre mi'),
          ],
        ),
      ),
    );
  }
}
