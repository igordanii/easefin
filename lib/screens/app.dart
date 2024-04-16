import 'package:finease/utils/app_routes.dart';
import 'package:flutter/material.dart';
import '../screens/welcome_screen.dart';
import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.home: (context) => WelcomeScreen(),
        AppRoutes.logIn: (context) => LoginScreen(),
        AppRoutes.signUp: (context) => SignupScreen(),
      },
      title: 'EaseFin',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 228, 182, 55)),
          useMaterial3: true),
    );
  }
}
