import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';
import 'package:shopping_list/screens/new_item_screen.dart';
import 'package:shopping_list/widgets/groceries_item.dart';

class GroceriesScreen extends StatefulWidget {
  const GroceriesScreen({super.key});

  @override
  State<GroceriesScreen> createState() => _GroceriesScreenState();
}

class _GroceriesScreenState extends State<GroceriesScreen> {
  final List<GroceryItem> _groceriesItems = [];

  Future<void> _addNewItem() async {
    final newItem = await Navigator.of(context).push(
      MaterialPageRoute<GroceryItem>(
        builder: (context) {
          return const NewItemScreen();
        },
      ),
    );

    if (newItem == null) return;

    setState(() {
      _groceriesItems.add(newItem);
    });
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
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _groceriesItems.length,
        itemBuilder: (context, index) {
          final grocery = _groceriesItems[index];
          return GroceriesItem(grocery: grocery);
        },
      ),
    );
  }
}
