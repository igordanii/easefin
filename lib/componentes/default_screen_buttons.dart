import 'package:flutter/material.dart';

class DefaultScreenButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const DefaultScreenButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: const Color.fromRGBO(6, 88, 246, 1),
        elevation: 10,
        minimumSize: const Size.fromHeight(50),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }
}
