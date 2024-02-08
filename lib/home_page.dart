import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "Home";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/images/back_ground/background2.png"),
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
