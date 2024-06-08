import 'package:finease/utils/app_routes.dart';
import 'package:flutter/material.dart';
import '../../../widgets/menu_navigator.dart'; 
import 'package:finease/components/input_text.dart';
import 'package:finease/components/default_screen_buttons.dart';

class RevenueScreen extends StatefulWidget {
  const RevenueScreen({Key? key}) : super(key: key);

  @override
  State<RevenueScreen> createState() => _RevenueScreenState();
}

class _RevenueScreenState extends State<RevenueScreen> {
  int currentTab = 2;
  int selectedButtonIndex = -1; 
  TextEditingController _controller = TextEditingController();

  void changeTab(int index) {
    setState(() {
      currentTab = index;
    });
  }

  void selectButton(int index) {
    setState(() {
      selectedButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.expense);
                selectButton(0);
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Color.fromRGBO(6, 88, 246, 1)),
              ),
              child: Text(
                'Despesa',
                style: TextStyle(
                  color: Color(0xFF7593B6),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.revenue);
                selectButton(1);
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Color.fromRGBO(6, 88, 246, 1)),
              ),
              child: Text(
                'Receita',
                style: TextStyle(
                  color: Colors.grey[200],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.goals);
                selectButton(2);
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Color.fromRGBO(6, 88, 246, 1)),
              ),
              child: Text(
                'Metas',
                style: TextStyle(
                  color: Color(0xFF7593B6),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(6, 88, 246, 1),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'R\$ 30,00',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.attach_money, color: Color.fromRGBO(6, 88, 246, 1)),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit, color: Color.fromRGBO(6, 88, 246, 1)),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 12),
            InputText(text: "Descrição", hint: "Adicione a descrição"),
            SizedBox(height: 12),
            InputText(text: "Recebi em", hint: "Adicione a forma de recebimento do valor"),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: 'Data',
                hintText: 'Hoje',
                suffixIcon: Icon(Icons.calendar_today, color: Color.fromRGBO(6, 88, 246, 1)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(6, 88, 246, 1)),
                ),
                labelStyle: TextStyle(color: Color.fromRGBO(6, 88, 246, 1)),
              ),
            ),
            SizedBox(height: 36),
            DefaultScreenButton(
              text: "Salvar",
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.profile);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        icon: Image.asset(
          '../../assets/icons/add.png',
          width: 64,
          height: 64,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MenuNavigation(
        currentTab: currentTab,
        onTabChanged: changeTab,
      ),
      backgroundColor: Color.fromARGB(255, 237, 235, 226),
    );
  }
}
