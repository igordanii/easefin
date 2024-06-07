import 'package:finease/utils/app_routes.dart';
import 'package:flutter/material.dart';
import '../../../widgets/menu_navigator.dart'; 

class GoalsScreen extends StatefulWidget {
  const GoalsScreen({Key? key}) : super(key: key);

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  int currentTab = 2;
  int selectedButtonIndex = -1; 

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
                  color: Color(0xFF7593B6),
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
                  color: Colors.grey[200],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(6, 88, 246, 1),
      ),
      body: Center(
        child: Text('Metas'),
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
