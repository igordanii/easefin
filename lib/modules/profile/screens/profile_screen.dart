import 'package:flutter/material.dart';
import 'package:finease/utils/app_routes.dart';
import '../../../widgets/menu_navigator.dart'; 
import '../../add/screens/expense_screen.dart';
import '../../../components/menu_button_profile.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int currentTab = 4; 
  void changeTab(int index) {
    setState(() {
      currentTab = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color.fromRGBO(6, 88, 246, 1),
            height: 130,
            child: Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.person,
                  size: 70,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'EaseFin',
                  style: TextStyle(color: Color.fromRGBO(6, 88, 246, 1), fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                MenuButton(text: 'Editar perfil', appRoute: AppRoutes.editProfile),
                MenuButton(text: 'Excluir movimentações', appRoute: AppRoutes.delMovements),
                MenuButton(text: 'Excluir conta', appRoute: AppRoutes.delAccount),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.welcome);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    minimumSize: Size(double.infinity, 50),
                    side: BorderSide(color: Color.fromRGBO(6, 88, 246, 1)),
                  ),
                  child: Text('Sair da conta', style: TextStyle(color: Color.fromRGBO(6, 88, 246, 1), fontWeight: FontWeight.bold),), 
                ),
              ],
            ),
          ),
        ],
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
          MaterialPageRoute(builder: (context) => ExpenseScreen()),
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
