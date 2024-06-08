import 'package:flutter/material.dart';
import '../../../widgets/menu_navigator.dart';
import '../../add/screens/expense_screen.dart';

class PlanningScreen extends StatefulWidget {
  const PlanningScreen({Key? key}) : super(key: key);

  @override
  State<PlanningScreen> createState() => _PlanningScreenState();
}

class _PlanningScreenState extends State<PlanningScreen> {
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
        title: Text(
          'Planejamento',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(6, 88, 246, 1),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color.fromRGBO(6, 88, 246, 1), width: 2.0),
                borderRadius: BorderRadius.circular(8.0), 
              ),
              child: Row(
                children: [
                  Icon(Icons.account_balance_wallet, size: 32.0, color: Color.fromRGBO(6, 88, 246, 1)),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Reserva de Emergência', style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 8.0),
                        LinearProgressIndicator(
                          value: 0.5, 
                          backgroundColor: Colors.grey[300],
                          valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(6, 88, 246, 1)),
                        ),
                        SizedBox(height: 4.0),
                        Text('R\$ 1.000,00', style: TextStyle(fontSize: 14.0)),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color.fromRGBO(6, 88, 246, 1), width: 2.0),
                borderRadius: BorderRadius.circular(8.0), 
              ),
              child: Row(
                children: [
                  Icon(Icons.airplanemode_active, size: 32.0, color: Color.fromRGBO(6, 88, 246, 1)),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Viagem - Recife', style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 8.0),
                        LinearProgressIndicator(
                          value: 0.7, 
                          backgroundColor: Colors.grey[300],
                          valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(6, 88, 246, 1)),
                        ),
                        SizedBox(height: 4.0),
                        Text('R\$ 550,00', style: TextStyle(fontSize: 14.0)),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color.fromRGBO(6, 88, 246, 1), width: 2.0),
                borderRadius: BorderRadius.circular(8.0), 
              ),
              child: Row(
                children: [
                  Icon(Icons.directions_car, size: 32.0, color: Color.fromRGBO(6, 88, 246, 1)),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Carro (Entrada)', style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 8.0),
                        LinearProgressIndicator(
                          value: 0.2, 
                          backgroundColor: Colors.grey[300],
                          valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(6, 88, 246, 1)),
                        ),
                        SizedBox(height: 4.0),
                        Text('R\$ 20.000,00', style: TextStyle(fontSize: 14.0)),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit),
                  ),
                ],
              ),
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
