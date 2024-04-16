import 'package:flutter/material.dart';

class TextScreenButton extends StatelessWidget {
  final String appRoute;
  final String textGray;
  final String textBlue;
  const TextScreenButton(
      {super.key, required this.appRoute, required this.textGray, required this.textBlue});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, appRoute);
      },
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