import 'package:shopping_list/models/category.dart';
import 'package:shopping_list/models/grocery_item.dart';

const kGroceryItems = [
  GroceryItem(
    id: 'a',
    name: 'Milk',
    quantity: 1,
    category: Category.dairy,
  ),
  GroceryItem(
    id: 'b',
    name: 'Bananas',
    quantity: 5,
    category: Category.fruit,
  ),
  GroceryItem(
    id: 'c',
    name: 'Beef Steak',
    quantity: 1,
    category: Category.meat,
  ),
];
