import 'package:flutter/material.dart';
import 'package:shopping_list/extensions/capitalize.dart';
import 'package:shopping_list/models/category.dart';

class NewItemScreen extends StatelessWidget {
  const NewItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a new item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                decoration: const InputDecoration(
                  label: Text('Name'),
                ),
                validator: (value) {
                  if (value == null || value.trim().length <= 1 || value.trim().length > 50) {
                    return 'Must be between 1 and 50 characters.';
                  }
                  return null;
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        label: Text('Quantity'),
                      ),
                      initialValue: '1',
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            int.tryParse(value) == null ||
                            int.tryParse(value)! <= 0) {
                          return 'Must be between a valid, positive number.';
                        }
                        return null;
                      },
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: DropdownButtonFormField(
                        items: [
                          for (final category in Category.values)
                            DropdownMenuItem(
                              value: category,
                              child: Row(
                                children: [
                                  Container(
                                    width: 16,
                                    height: 16,
                                    color: category.color,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 6),
                                    child: Text(category.name.capitalize()),
                                  ),
                                ],
                              ),
                            ),
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Reset'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Add Item'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
