import 'package:finease/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:finease/widgets/custom_scafold.dart';
import 'package:finease/componentes/default_screen_buttons.dart';
import 'package:finease/componentes/text_screen_buttons.dart';
import 'package:finease/componentes/input_text.dart';
import 'package:finease/componentes/input_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            InputText(text: "E-mail", hint: "Digite seu e-mail"),
            const SizedBox(height: 16),
            InputPassword(text: "Senha", hint: "Digite seu senha"),
            const SizedBox(height: 16),
            Container(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.passReset);
                },
                child: Text('Esqueci minha senha',
                    style:
                        const TextStyle(color: Color.fromRGBO(6, 88, 246, 1))),
              ),
            ),
            const SizedBox(height: 40),
            DefaultScreenButton(
              text: "Entrar",
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.userHome);
              },
            ),
            const SizedBox(height: 16),
            TextScreenButton(
                appRoute: AppRoutes.signUp,
                textGray: "Ainda não possui conta?",
                textBlue: " Criar conta."),
          ],
        ),
      ),
    );
  }
}
