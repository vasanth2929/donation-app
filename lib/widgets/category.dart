import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String title;
  final IconData icon;
  Category({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0,
      margin: EdgeInsets.only(top: 10, right: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(4)),
      child: Row(
        children: [
          Icon(
            icon,
            size: 18,
          ),
          SizedBox(
            width: 5,
          ),
          Text(title)
        ],
      ),
    );
  }
}
