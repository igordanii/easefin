import 'package:flutter/material.dart';
import "screens/app.dart";

void main() {
  runApp(const FinEase());
}

class FinEase extends StatelessWidget {
  const FinEase({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const App();
  }
}
