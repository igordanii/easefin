import 'dart:async';
// import 'package:finease/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:finease/widgets/custom_scafold.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(const Duration(seconds: 3), () {
    //   Navigator.pushReplacementNamed(context, '/welcome');
    // });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      addPadding: true,
      child: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
