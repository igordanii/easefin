import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String text;
  final String appRoute;
  const MenuButton({required this.text, required this.appRoute});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, appRoute);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          minimumSize: Size(double.infinity, 50),
          side: BorderSide(color: Color.fromRGBO(6, 88, 246, 1)),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: TextStyle(color: Color.fromRGBO(6, 88, 246, 1), fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
