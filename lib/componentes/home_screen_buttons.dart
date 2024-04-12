import 'package:flutter/material.dart';

class HomeScreenButton extends StatelessWidget {
  final String appRoute;
  final String text;
  const HomeScreenButton(
      {super.key, required this.appRoute, required this.text});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, appRoute);
      },
      child: Text(text),
      backgroundColor: Colors.white70,
    );
  }
}
