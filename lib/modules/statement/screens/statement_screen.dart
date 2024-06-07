import 'package:flutter/material.dart';
import '../../../widgets/menu_navigator.dart'; 
import '../../add/screens/expense_screen.dart';

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
      appBar: AppBar(
        title: Text('Transações', 
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(6, 88, 246, 1),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          TransactionItem(
            icon: Icons.shopping_bag,
            title: 'Compra Vestido',
            subtitle: 'Pessoal · Fatura Nubank',
            amount: 'R\$ 100,00',
          ),
          TransactionItem(
            icon: Icons.directions_car,
            title: 'Uber',
            subtitle: 'Transporte · Fatura Nubank',
            amount: 'R\$ 19,90',
          ),
          TransactionItem(
            icon: Icons.school,
            title: 'Faculdade',
            subtitle: 'Educação · Débito Itaú',
            amount: 'R\$ 390,00',
          ),
          TransactionItem(
            icon: Icons.wifi,
            title: 'Internet',
            subtitle: 'Casa · Débito Itaú',
            amount: 'R\$ 100,00',
          ),
          TransactionItem(
            icon: Icons.shopping_cart,
            title: 'Mercado',
            subtitle: 'Alimentação · Fatura Neon',
            amount: 'R\$ 440,00',
          ),
          TransactionItem(
            icon: Icons.local_hospital,
            title: 'Farmácia SP',
            subtitle: 'Saúde · Débito Itaú',
            amount: 'R\$ 140,00',
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

  Widget _buildLegendItem(String title, Color color) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          color: color,
        ),
        SizedBox(width: 8.0),
        Text(title, style: TextStyle(color: Color.fromRGBO(6, 88, 246, 1), fontSize: 15)),
      ],
    );
  }
}

class TransactionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String amount;

  TransactionItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(color: Color.fromRGBO(6, 88, 246, 1)),
      ),
      child: ListTile(
        leading: Icon(icon, color: Color.fromRGBO(6, 88, 246, 1)),
        title: Text(
          title,
          style: TextStyle(color: Color.fromRGBO(6, 88, 246, 1)),
        ),
        subtitle: Text(subtitle),
        trailing: Text(
          amount,
          style: TextStyle(
            color: Color.fromRGBO(6, 88, 246, 1),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
