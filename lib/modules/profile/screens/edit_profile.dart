import 'package:flutter/material.dart';
import 'package:finease/utils/app_routes.dart';
import 'package:finease/components/input_text.dart';
import 'package:finease/components/default_screen_buttons.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Editar perfil",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color.fromRGBO(6, 88, 246, 1),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(height: 10),
              InputText(text: "Nome", hint: "EaseFin"),
              SizedBox(height: 10),
              InputText(text: "E-mail", hint: "user@easefin.com"),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.editPassword);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[200],
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Alterar senha',
                      style: TextStyle(
                        color: Color.fromRGBO(6, 88, 246, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Image.asset(
                      '../assets/icons/right-arrow.png',
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
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
      backgroundColor: Color.fromARGB(255, 237, 235, 226), 
    );
  }
}
