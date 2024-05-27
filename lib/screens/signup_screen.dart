import 'package:finease/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:finease/widgets/custom_scafold.dart';
import 'package:finease/components/default_screen_buttons.dart';
import 'package:finease/components/text_screen_buttons.dart';
import 'package:finease/components/input_text.dart';
import 'package:finease/components/input_password.dart';

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
              'assets/images/logop.png',
              width: 150,
              height: 150,
            ),
            InputText(text: "Nome", hint: "Digite seu nome e sobrenome"),
            const SizedBox(height: 16),
            InputText(text: "E-mail", hint: "Digite seu e-mail"),
            const SizedBox(height: 16),
            InputPassword(
                text: "Senha(mínimo de 6 caracteres)", hint: "Crie uma senha"),
            const SizedBox(height: 16),
            InputPassword(text: "Confirmar senha", hint: "Confirme sua senha"),
            const SizedBox(height: 40),
            DefaultScreenButton(
              text: "Criar conta",
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.userHome);
              },
            ),
            const SizedBox(height: 16),
            TextScreenButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.logIn);
                },
                textGray: "Já tem uma conta?",
                textBlue: " Fazer login."),
          ],
        ),
      ),
    );
  }
}
