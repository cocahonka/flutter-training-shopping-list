import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';

class GroceriesItem extends StatelessWidget {
  const GroceriesItem({
    required this.grocery,
    super.key,
  });

  final GroceryItem grocery;

  @override
  Widget build(BuildContext context) {
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
  }
}
