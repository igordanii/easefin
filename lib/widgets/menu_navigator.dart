import 'package:flutter/material.dart';

import '../modules/home/screens/home_screen.dart';
import '../modules/statement/screens/statement_screen.dart';
import '../modules/planning/screens/planning_screen.dart';
import '../modules/profile/screens/profile_screen.dart';

class MenuNavigation extends StatelessWidget {
  final int currentTab;
  final Function(int) onTabChanged;

  MenuNavigation({required this.currentTab, required this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 5,
      child: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            MaterialButton(
              minWidth: 30,
              onPressed: () {
                if (currentTab != 0) {
                  onTabChanged(0);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                }
              },
              child: Image.asset(
                '../../assets/icons/home.png',
                width: 24,
                height: 24,
              ),
            ),
            MaterialButton(
              minWidth: 40,
              child: Image.asset(
                '../../assets/icons/statement.png',
                width: 24,
                height: 24,
              ),
              onPressed: () {
                if (currentTab != 1) {
                  onTabChanged(1);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => StatementScreen()),
                  );
                }
              },
            ),
            const SizedBox(width: 40),
            MaterialButton(
              minWidth: 40,
              child: Image.asset(
                '../../assets/icons/planning.png',
                width: 24,
                height: 24,
              ),
              onPressed: () {
                if (currentTab != 3) {
                  onTabChanged(3);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => PlanningScreen()),
                  );
                }
              },
            ),
            MaterialButton(
              minWidth: 40,
              child: Image.asset(
                '../../assets/icons/profile.png',
                width: 24,
                height: 24,
              ),
              onPressed: () {
                if (currentTab != 4) {
                  onTabChanged(4);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
