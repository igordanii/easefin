import 'package:finease/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:finease/widgets/custom_scafold.dart';
import 'package:finease/componentes/default_screen_buttons.dart';
import 'package:finease/componentes/home_screen_buttons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return CustomScaffold(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Flexible(
            child: Image.asset(
              '../../assets/images/logo.png', 
              width: 300, 
              height: 300, 
              fit: BoxFit.contain, 
            ),
          ), 
          const Column(
            children: [
              DefaultScreenButton(appRoute: AppRoutes.logIn, text: "Entrar"),
              SizedBox(height: 20), 
              HomeScreenButton(appRoute: AppRoutes.signUp, text: "Criar uma conta"),
            ],
          ),
        ],
      ),
    ),
  );
}

}
