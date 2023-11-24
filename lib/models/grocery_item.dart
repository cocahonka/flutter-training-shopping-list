import 'package:flutter/material.dart';
import 'package:shopping_list/models/category.dart';

@immutable
class GroceryItem {
  const GroceryItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.category,
  });

  final String id;
  final String name;
  final int quantity;
  final Category category;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    if (other is GroceryItem &&
        id == other.id &&
        name == other.name &&
        quantity == other.quantity &&
        category == other.category) return true;

    return false;
  }

  @override
  int get hashCode => Object.hash(id, name, quantity, category);
}
