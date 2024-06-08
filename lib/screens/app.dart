import 'package:finease/modules/auth/controllers/login_controller.dart';
import 'package:finease/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/splash_screen.dart';
import '../screens/welcome_screen.dart';
import '../modules/auth/screens/login_screen.dart';
import '../screens/pass_reset_screen.dart';
import '../screens/confirm_pass_reset_screen.dart';
import '../screens/signup_screen.dart';
import '../modules/home/screens/home_screen.dart';

import '../modules/profile/screens/profile_screen.dart';
import '../modules/profile/screens/edit_profile.dart';
import '../modules/profile/screens/edit_password.dart';
import '../modules/profile/screens//del_movements.dart';
import '../modules/profile/screens/del_account.dart';

import '../modules/notifications/notifications.dart';
import '../modules/statement/screens/statement_screen.dart';

import '../modules/add/screens/expense_screen.dart';
import '../modules/add/screens/revenue_screen.dart';
import '../modules/add/screens/goals_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          AppRoutes.splash: (context) => SplashScreen(),
          AppRoutes.welcome: (context) => WelcomeScreen(),
          AppRoutes.logIn: (context) => LoginScreen(),
          AppRoutes.signUp: (context) => SignupScreen(),
          AppRoutes.userHome: (context) => HomeScreen(),
          AppRoutes.passReset: (context) => PasswordResetScreen(),
          AppRoutes.confirmPassReset: (context) => ConfirmPasswordResetScreen(),
          AppRoutes.profile: (context) => ProfileScreen(),
          AppRoutes.editProfile: (context) => EditProfile(),
          AppRoutes.editPassword: (context) => EditPassword(),
          AppRoutes.delMovements: (context) => DeleteMoviments(),
          AppRoutes.delAccount: (context) => DeleteAccount(),
          AppRoutes.notifications: (context) => Notifications(),
          AppRoutes.statement: (context) => StatementScreen(),
          AppRoutes.expense: (context) => ExpenseScreen(),
          AppRoutes.revenue: (context) => RevenueScreen(),
          AppRoutes.goals: (context) => GoalsScreen(),
        },
        title: 'EaseFin',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 228, 182, 55)),
          useMaterial3: true,
        ),
      ),
    );
  }
}
