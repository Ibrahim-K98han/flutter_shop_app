import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_ui/pages/cart/cart_page.dart';
import 'package:flutter_shopping_app_ui/pages/home/home_page.dart';
import 'package:flutter_shopping_app_ui/pages/item/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        '/': (context) => const HomePage(),
        'cartPage': (context) => const CartPage(),
        'itemPage': (context) => const ItemPage(),
      },
    );
  }
}
