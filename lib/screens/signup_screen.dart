import 'package:finease/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:finease/widgets/custom_scafold.dart';
import 'package:finease/componentes/default_screen_buttons.dart';
import 'package:finease/componentes/input_text.dart';
import 'package:finease/componentes/input_password.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  static const colorBlue = Color.fromRGBO(6, 88, 246, 1);
  static const colorGray = Color.fromRGBO(67, 73, 85, 1);

  @override
  Widget build(BuildContext context) {
  return CustomScaffold(
    child: Form(
      child: Column(
        children: <Widget>[
          Image.asset(
            '../../assets/images/logop.png', 
            width: 150, 
            height: 150, 
          ),
          InputText(text: "Nome", hint: "Digite seu nome e sobrenome"),
          const SizedBox(height: 16),
          InputText(text: "Email", hint: "Digite seu email"),
          const SizedBox(height: 16),
          InputPassword(text: "Senha(mínimo de 6 caracteres)", hint: "Crie uma senha"),
          const SizedBox(height: 16),
          InputPassword(text: "Confirmar senha", hint: "Confirme sua senha"),
          const SizedBox(height: 40),
          DefaultScreenButton(appRoute: AppRoutes.logIn, text: "Criar conta"),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
                  // Handle create account.
            },
            child: RichText(
              text: TextSpan(
                text: 'Já tem uma conta?',
                style: TextStyle(color: colorGray),
                children: [
                  TextSpan(
                    text: ' Faça login',
                    style: TextStyle(color: colorBlue),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
  }
}
