import 'package:flutter/material.dart';
import 'package:finease/utils/app_routes.dart';
import 'package:finease/components/input_password.dart';
import 'package:finease/components/default_screen_buttons.dart';

class EditPassword extends StatelessWidget {
  const EditPassword({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alterar senha",
          style: TextStyle(color: Colors.white), 
          textAlign: TextAlign.center, 
        ),
        backgroundColor: Color.fromRGBO(6, 88, 246, 1),
      ),
      body: Container(
        color: Color.fromARGB(255, 237, 235, 226),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(height: 10),
              InputPassword(text: "Senha anterior", hint: "********"),
              SizedBox(height: 10),
              InputPassword(text: "Nova senha", hint: "Crie uma nova senha"),
              SizedBox(height: 10),
              InputPassword(text: "Confirmar senha", hint: "Confirme sua senha"),
              SizedBox(height: 50),
              DefaultScreenButton(
                text: "Salvar alterações",
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.profile);
                },
              ),
              SizedBox(height: 16),
              Image.asset(
                '../assets/images/logop.png',
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
