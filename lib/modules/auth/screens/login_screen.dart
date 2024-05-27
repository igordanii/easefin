import 'package:finease/modules/auth/controllers/login_controller.dart';
import 'package:finease/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:finease/widgets/custom_scafold.dart';
import 'package:finease/components/default_screen_buttons.dart';
import 'package:finease/components/text_screen_buttons.dart';
import 'package:finease/components/input_text.dart';
import 'package:finease/components/input_password.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = Provider.of<LoginController>(context);

    return CustomScaffold(
      child: Form(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/logop.png',
              width: 150,
              height: 150,
            ),
            InputText(
              controller: loginController.emailController,
              text: "E-mail",
              hint: "Digite seu e-mail",
            ),
            const SizedBox(height: 16),
            InputPassword(
              controller: loginController.passwordController,
              text: "Senha",
              hint: "Digite seu senha",
            ),
            const SizedBox(height: 16),
            Container(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.passReset);
                },
                child: const Text(
                  'Esqueci minha senha',
                  style: TextStyle(color: Color.fromRGBO(6, 88, 246, 1)),
                ),
              ),
            ),
            const SizedBox(height: 40),
            DefaultScreenButton(
              text: loginController.isLoading ? 'Carregando' : "Entrar",
              onPressed: () {
                loginController.login();
                // Navigator.pushNamed(context, AppRoutes.userHome);
              },
            ),
            const SizedBox(height: 16),
            TextScreenButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.signUp);
                },
                textGray: "Ainda não possui conta?",
                textBlue: " Criar conta."),
          ],
        ),
      ),
    );
  }
}
