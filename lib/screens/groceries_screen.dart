import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';

class GroceriesScreen extends StatelessWidget {
  const GroceriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
      ),
      body: ListView.builder(
        itemCount: kGroceryItems.length,
        itemBuilder: (context, index) {
          final grocery = kGroceryItems[index];
          return ListTile(
            key: ValueKey(grocery),
            leading: Container(
              width: 25,
              height: 25,
              color: grocery.category.color,
            ),
            title: Text(grocery.name),
            trailing: Text(grocery.quantity.toString()),
          );
        },
      ),
    );
  }
}
