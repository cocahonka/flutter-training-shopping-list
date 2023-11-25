import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';
import 'package:shopping_list/screens/new_item_screen.dart';

class GroceriesScreen extends StatefulWidget {
  const GroceriesScreen({super.key});

  @override
  State<GroceriesScreen> createState() => _GroceriesScreenState();
}

class _GroceriesScreenState extends State<GroceriesScreen> {
  void _addNewItem() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) {
          return const NewItemScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [
          IconButton(
            onPressed: _addNewItem,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: kGroceryItems.length,
        itemBuilder: (context, index) {
          final grocery = kGroceryItems[index];
          return ListTile(
            key: ValueKey(grocery),
            leading: Container(
              width: 24,
              height: 24,
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
