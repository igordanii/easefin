import 'package:finease/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:finease/widgets/custom_scafold.dart';
import 'package:finease/components/default_screen_buttons.dart';
import 'package:finease/components/home_screen_buttons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      addPadding: true,
      child: Column(
          children: [
            Image.asset(
              'images/logot.png',
              width: 150,
              height: 150,
              fit: BoxFit.contain,
            ),
            Image.asset(
              'images/welcome.png',
              width: 300,
              height: 300,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                DefaultScreenButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.logIn);
                    },
                    text: "Entrar"),
                const SizedBox(height: 20),
                HomeScreenButton(
                  appRoute: AppRoutes.signUp,
                  text: "Criar uma conta",
                ),
              ],
            ),
          ],
        ),
      );
  }
}
