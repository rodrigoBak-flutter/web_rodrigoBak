import 'package:flutter/material.dart';
import 'package:web_rodrigobak/ui/shared/customFlatButton_app.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            text: 'Inicio',
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            onPressed: () {
             Navigator.pushNamed(context, '/sobreMi');
            },
            text: 'Sobre mi',
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
