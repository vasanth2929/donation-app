import 'package:donation_app/widgets/category.dart';
import 'package:donation_app/widgets/issue.dart';
import 'package:donation_app/widgets/main.dart';
import 'package:donation_app/widgets/topbar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
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
                CategoryList(),
                Issue(
                  daysLeft: 9,
                  amount: 12.765,
                  title: "Clean water for refugess camp",
                  imageUrl:
                      "https://cdn.pixabay.com/photo/2019/01/16/14/16/people-3935983__340.jpg",
                ),
                Issue(
                  amount: 17.786,
                  daysLeft: 12,
                  imageUrl:
                      "https://cdn.pixabay.com/photo/2018/02/07/18/30/people-3137670__340.jpg",
                  title: "Help refugee get better education",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
