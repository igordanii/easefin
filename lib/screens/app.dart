import 'package:finease/modules/auth/controllers/login_controller.dart';
import 'package:finease/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/welcome_screen.dart';
import '../modules/auth/screens/login_screen.dart';
import '../screens/pass_reset_screen.dart';
import '../screens/confirm_pass_reset_screen.dart';
import '../screens/signup_screen.dart';
import '../screens/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          AppRoutes.home: (context) => WelcomeScreen(),
          AppRoutes.logIn: (context) => LoginScreen(),
          AppRoutes.signUp: (context) => SignupScreen(),
          AppRoutes.userHome: (context) => HomeScreen(),
          AppRoutes.passReset: (context) => PasswordResetScreen(),
          AppRoutes.confirmPassReset: (context) => ConfirmPasswordResetScreen(),
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
