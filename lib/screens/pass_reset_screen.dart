import 'package:finease/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:finease/widgets/custom_scafold.dart';
import 'package:finease/components/input_text.dart';
import 'package:finease/components/default_screen_buttons.dart';
import 'package:finease/components/text_screen_buttons.dart';

class PasswordResetScreen extends StatelessWidget {
  const PasswordResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      addPadding: true,
      child: Form(
        child: Column(children: <Widget>[
          Image.asset(
            'assets/images/logop.png',
            width: 150,
            height: 150,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text("Redefinição de senha!",
                style: const TextStyle(
                    color: Color.fromRGBO(6, 88, 246, 1),
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 16),
          Text(
              "Informe um e-mail e enviaremos um link para recuperação da sua senha.",
              style: const TextStyle(
                  color: const Color.fromRGBO(163, 163, 163, 1))),
          const SizedBox(height: 30),
          InputText(text: "E-mail", hint: "Digite seu e-mail"),
          const SizedBox(height: 50),
          DefaultScreenButton(
            text: "Redefinir senha",
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.confirmPassReset);
            },
          ),
          const SizedBox(height: 30),
          TextScreenButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.signUp);
              },
              textGray: "Ainda não possui conta?",
              textBlue: " Criar conta"),
          TextScreenButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.logIn);
              },
              textGray: "Ou retorne para?",
              textBlue: " Fazer login."),
        ]),
      ),
    );
  }
}
