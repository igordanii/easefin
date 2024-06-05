import 'package:flutter/material.dart';
import '../../../widgets/menu_navigator.dart'; 
import '../../add/screens/add_screen.dart';
import 'package:fl_chart/fl_chart.dart'; 

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;

  void changeTab(int index) {
    setState(() {
      currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              color: Color.fromRGBO(6, 88, 246, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Olá, \nEaseFin',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white, 
                      borderRadius: BorderRadius.circular(12), 
                    ),
                    child: IconButton(
                      icon: Image.asset('../assets/icons/notifications.png'),
                      onPressed: () {
                        // adicionar rota para a tela de notificações
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Color.fromRGBO(6, 88, 246, 1)),
              ),
              child: Column(
                  children: [
                    Text(
                      'R\$ 2.350,00',
                      style: TextStyle(
                        color: Color.fromRGBO(6, 88, 246, 1),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0), 
                    Text(
                      'SALDO ATUAL',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Color.fromRGBO(6, 88, 246, 1)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Despesas por categoria (%)',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color.fromRGBO(6, 88, 246, 1)),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    height: 150.0,
                    child: PieChart(
                      PieChartData(
                        sections: [
                          PieChartSectionData(
                            color: Color(0xFF7593B6),
                            value: 30,
                          ),
                          PieChartSectionData(
                            color: Color(0xFF6596BD),
                            value: 25,
                          ),
                          PieChartSectionData(
                            color: Color(0xFF0C4881),
                            value: 20,
                          ),
                          PieChartSectionData(
                            color: Color(0xFF022E55),
                            value: 25,
                          ),
                        ],
                        sectionsSpace: 2,
                        centerSpaceRadius: 30,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildLegendItem('Casa', Color(0xFF7593B6)),
                      _buildLegendItem('Educação', Color(0xFF6596BD)),
                      _buildLegendItem('Alimentação', Color(0xFF0C4881)),
                      _buildLegendItem('Outros', Color(0xFF022E55)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Color.fromRGBO(6, 88, 246, 1)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Próximos compromissos',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color.fromRGBO(6, 88, 246, 1)),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(Icons.credit_card),
                    title: Text('Fatura Nubank', style: TextStyle(color: Color.fromRGBO(6, 88, 246, 1))),
                    subtitle: Text('Vence amanhã - 14/06'),
                    trailing: Text('R\$ 140,00', style: TextStyle(color: Color.fromRGBO(6, 88, 246, 1), fontSize: 15)),
                    iconColor: Color.fromRGBO(6, 88, 246, 1),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Aluguel', style: TextStyle(color: Color.fromRGBO(6, 88, 246, 1))),
                    subtitle: Text('Vence em dois dias - 16/06'),
                    trailing: Text('R\$ 550,00', style: TextStyle(color: Color.fromRGBO(6, 88, 246, 1), fontSize: 15)),
                    iconColor: Color.fromRGBO(6, 88, 246, 1),
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

  Widget _buildLegendItem(String title, Color colors) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          color: colors,
        ),
        SizedBox(width: 8.0),
        Text(title, style: TextStyle(color: Color.fromRGBO(6, 88, 246, 1), fontSize: 15)),
      ],
    );
  }
}
