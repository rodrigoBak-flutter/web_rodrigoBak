import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;
  const CustomFlatButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.blue,
      ),
      onPressed: () => onPressed(),
      child: Text(text),
    );
  }
}
