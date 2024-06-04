import 'package:flutter/material.dart';
import '../../../widgets/menu_navigator.dart'; 
import '../../add/screens/add_screen.dart';

class PlanningScreen extends StatefulWidget {
  const PlanningScreen({Key? key}) : super(key: key);

  @override
  State<PlanningScreen> createState() => _PlanningScreenState();
}

class _PlanningScreenState extends State<PlanningScreen> {
  int currentTab = 3; 

  void changeTab(int index) {
    setState(() {
      currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Conteúdo da tela de planejamento'),
      ),
      floatingActionButton: IconButton(
        icon: Image.asset(
                '../../assets/icons/add.png',
                width: 64,
                height: 64,
              ),
        onPressed: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddScreen()),
        );
        },
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
