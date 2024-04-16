import 'package:flutter/material.dart';

class DefaultScreenButton extends StatelessWidget {
  final String appRoute;
  final String text;
  const DefaultScreenButton(
      {super.key, required this.appRoute, required this.text});

  @override
  Widget build(BuildContext context) {
     return ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, appRoute);
        },
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