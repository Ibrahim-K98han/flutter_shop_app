import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_ui/common/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppbar(),
        ],
      ),
    );
  }
}
