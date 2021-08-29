import 'package:donation_app/widgets/category.dart';
import 'package:donation_app/widgets/main.dart';
import 'package:donation_app/widgets/topbar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Topbar(),
            SizedBox(
              height: 20,
            ),
            Main(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            CategoryList()
          ],
        ),
      ),
    );
  }
}
