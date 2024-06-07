import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

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
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white, 
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color.fromRGBO(6, 88, 246, 1))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0), 
                          child: ListTile(
                            leading: Icon(Icons.message, color: Color.fromRGBO(6, 88, 246, 1)),
                            title: Text(
                              'Pague a sua fatura do Nubank!',
                              style: TextStyle(color: Color.fromRGBO(6, 88, 246, 1), fontSize: 14),
                            ),
                            subtitle: Text('Sua fatura no valor de R\$ 840,00 vence amanhã, dia 14/06.'),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white, 
                          borderRadius: BorderRadius.circular(12), 
                          border: Border.all(color: Color.fromRGBO(6, 88, 246, 1))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0), // Ajuste do padding interno do Card
                          child: ListTile(
                            leading: Icon(Icons.message, color: Color.fromRGBO(6, 88, 246, 1)),
                            title: Text(
                              'Você tem um pagamento atrasado!',
                              style: TextStyle(color: Color.fromRGBO(6, 88, 246, 1), fontSize: 14),
                            ),
                            subtitle: Text('Sua mensalidade no valor de R\$ 110,00 venceu no dia 10/06.'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Image.asset(
              '../assets/images/logop.png',
              width: 150,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
