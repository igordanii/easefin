import 'package:flutter/material.dart';
import '../../../widgets/menu_navigator.dart'; 
import '../../add/screens/add_screen.dart';

class StatementScreen extends StatefulWidget {
  const StatementScreen({Key? key}) : super(key: key);

  @override
  State<StatementScreen> createState() => _StatementScreenState();
}

class _StatementScreenState extends State<StatementScreen> {
  int currentTab = 1;

  void changeTab(int index) {
    setState(() {
      currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Conteúdo de transações'),
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
      backgroundColor: Color(0xFFD9D9D9),
    );
  }
}
