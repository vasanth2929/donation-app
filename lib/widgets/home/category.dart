import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  Category({required this.title, required this.icon, required this.color});

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
            color: color,
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

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            icon: Icons.favorite_border_outlined,
            title: "Humanity",
            color: Colors.orange.withOpacity(0.8),
          ),
          Category(
            icon: Icons.healing_outlined,
            title: "Health",
            color: Colors.green.withOpacity(0.5),
          ),
          Category(
            icon: Icons.book,
            title: "Education",
            color: Colors.green.withOpacity(.9),
          ),
          Category(
            icon: Icons.travel_explore,
            title: "Environment",
            color: Colors.greenAccent,
          ),
        ],
      ),
    );
  }
}
