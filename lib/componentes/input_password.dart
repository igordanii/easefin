import 'package:flutter/material.dart';

class InputPassword extends StatelessWidget {
  final String text;
  final String hint;
  const InputPassword({super.key, required this.text, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
        hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey.shade600, fontSize: 12
          ),
        labelText: text,
        labelStyle: const TextStyle(
          color: Color.fromRGBO(6, 88, 246, 1),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(6, 88, 246, 1)),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(6, 88, 246, 1)),
        ),
      ),
    );
  }
}