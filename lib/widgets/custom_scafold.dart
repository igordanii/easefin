import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child;
  final bool addPadding;
  const CustomScaffold({super.key, required this.child, this.addPadding = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        color: const Color(0xFFF1EFE7),
        child: SafeArea(
          child: addPadding
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: child,
                )
              : child,
          ),
      ),
    );
  }
}
