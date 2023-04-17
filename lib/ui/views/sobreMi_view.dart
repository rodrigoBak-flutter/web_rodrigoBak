import 'package:flutter/material.dart';

class SobreMiView extends StatelessWidget {
  const SobreMiView({super.key});

  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text('Sobre mi'),
          ],
        ),
      
    );
  }
}
