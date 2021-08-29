import 'package:flutter/material.dart';

class Issue {
  final title;
  final amount;
  final daysLeft;
  final imageUrl;
  final id;
  final category;
  final IconData categoryIcon;

  Issue(
      {required this.title,
      required this.id,
      required this.category,
      required this.amount,
      required this.daysLeft,
      required this.categoryIcon,
      required this.imageUrl});
}
