import 'package:flutter/material.dart';
import 'package:finease/utils/app_routes.dart';
import 'package:finease/components/default_screen_buttons.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Excluir conta",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromRGBO(6, 88, 246, 1),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(height: 50),
              Text(
                "Todas as suas movimentações e dados serão excluídos e não poderão ser restaurados.",
                style: const TextStyle(
                  color: Color.fromRGBO(6, 88, 246, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Ao clicar em 'Excluir', você concorda com os termos acima.",
                style: const TextStyle(
                  color: const Color.fromRGBO(163, 163, 163, 1),
                ),
              ),
              SizedBox(height: 50),
              DefaultScreenButton(
                text: "Excluir conta",
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.welcome);
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
      backgroundColor: Color.fromARGB(255, 237, 235, 226), 
    );
  }
}
