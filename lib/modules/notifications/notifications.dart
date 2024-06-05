import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notificações",
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
              Image.asset(
                '../assets/icons/search.png',
                width: 250,
                height: 250,
              ),
              Expanded( 
                child: Container(
                  alignment: Alignment.center, 
                  child: Text(
                    "Nenhuma mensagem \npor enquanto :)",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 190, 189, 184),
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
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
