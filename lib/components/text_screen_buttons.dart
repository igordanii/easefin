import 'package:flutter/material.dart';

class TextScreenButton extends StatelessWidget {
  final String textGray;
  final VoidCallback onPressed;
  final String textBlue;
  const TextScreenButton(
      {super.key,
      required this.textGray,
      required this.textBlue,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: RichText(
        text: TextSpan(
          text: textGray,
          style: const TextStyle(color: Color.fromRGBO(67, 73, 85, 1)),
          children: [
            TextSpan(
              text: textBlue,
              style: const TextStyle(color: Color.fromRGBO(6, 88, 246, 1)),
            ),
          ],
        ),
      ),
    );
  }
}
