import 'package:flutter/material.dart';
import 'package:web_rodrigobak/ui/shared/customFlatButton_app.dart';

class View404 extends StatelessWidget {
  const View404({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '404',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'No se encontro la pagina',
              style: TextStyle(fontSize: 20),
            ),
            CustomFlatButton(
              text: 'Regresar al inicio',
              onPressed: () => Navigator.pushNamed(context, '/home'),
            )
          ],
        ),
      );
  }
}
