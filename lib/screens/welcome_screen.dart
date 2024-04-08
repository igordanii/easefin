import 'package:flutter/material.dart';
import 'package:finease/widgets/custom_scafold.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        child: Column(children: [
      Flexible(
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40.8),
              child: Center(
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: [
                        TextSpan(
                            text: 'Welcome to EaseFin!\n',
                            style: TextStyle(
                                fontSize: 45.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                        TextSpan(
                            text:
                                '\nOrganize suas finanças de maneira inteligente.',
                            style: TextStyle(fontSize: 20, color: Colors.white))
                      ])))))
    ]));
  }
}
