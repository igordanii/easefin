import 'package:flutter/material.dart';
import 'package:finease/widgets/custom_scafold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return const CustomScaffold(
    child: Center(
      child: Text(
        "⚙️EaseFin..."
      )
    ),
  );
  }
}
