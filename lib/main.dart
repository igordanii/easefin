import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const FinEase());
}

class FinEase extends StatelessWidget {
  const FinEase({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EaseFin',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 228, 182, 55)),
          useMaterial3: true),
      home: const WelcomeScreen(),
    );
  }
}
