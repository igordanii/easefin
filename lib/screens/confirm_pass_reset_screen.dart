import 'package:finease/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:finease/widgets/custom_scafold.dart';
import 'package:finease/components/default_screen_buttons.dart';

class ConfirmPasswordResetScreen extends StatelessWidget {
  const ConfirmPasswordResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Form(
        child: Column(children: <Widget>[
          Image.asset(
            'assets/images/logop.png',
            width: 150,
            height: 150,
          ),
          Text("Enviamos um link para o seu e-mail cadastrado.",
              style: const TextStyle(
                  color: Color.fromRGBO(6, 88, 246, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 25),
          Text("Cheque sua caixa de entrada. :)",
              style: const TextStyle(
                  color: const Color.fromRGBO(163, 163, 163, 1))),
          const SizedBox(height: 50),
          DefaultScreenButton(
            text: "Fazer login",
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.logIn);
            },
          ),
        ]),
      ),
    );
  }
}
