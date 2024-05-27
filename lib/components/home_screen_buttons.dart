import 'package:flutter/material.dart';

class HomeScreenButton extends StatelessWidget {
  final String appRoute;
  final String text;
  const HomeScreenButton(
      {super.key, required this.appRoute, required this.text});

  @override
  Widget build(BuildContext context) {
     return OutlinedButton(
        onPressed: () {
          Navigator.pushNamed(context, appRoute);
        },
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Color.fromRGBO(6, 88, 246, 1),
          ),
          backgroundColor: Colors.white,
          minimumSize: const Size.fromHeight(50),
          shadowColor: const Color.fromARGB(255, 46, 46, 46),
          elevation: 6,
        ),
        child: Text(text, style: const TextStyle(color: Color.fromRGBO(6, 88, 246, 1), fontWeight: FontWeight.bold)),
      );
  }
}