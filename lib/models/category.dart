import 'package:flutter/material.dart';

enum Category {
  vegetables(color: Color.fromARGB(255, 0, 255, 128)),
  fruit(color: Color.fromARGB(255, 145, 255, 0)),
  meat(color: Color.fromARGB(255, 255, 102, 0)),
  dairy(color: Color.fromARGB(255, 0, 208, 255)),
  carbs(color: Color.fromARGB(255, 0, 60, 255)),
  sweets(color: Color.fromARGB(255, 255, 149, 0)),
  spices(color: Color.fromARGB(255, 255, 187, 0)),
  convenience(color: Color.fromARGB(255, 191, 0, 255)),
  hygiene(color: Color.fromARGB(255, 149, 0, 255)),
  other(color: Color.fromARGB(255, 0, 225, 255));

  const Category({required this.color});

  final Color color;
}
