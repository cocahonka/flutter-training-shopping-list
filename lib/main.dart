import 'package:flutter/material.dart';
import 'package:shopping_list/screens/groceries_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Groceries',
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: const Color.fromARGB(255, 147, 229, 250),
          surface: const Color.fromARGB(255, 42, 51, 29),
        ),
      ),
      home: const GroceriesScreen(),
    );
  }
}
