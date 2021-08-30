import 'package:donation_app/models/issue_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DonationController extends GetxController {
  final RxString username = "Preethi".obs;

  List<Issue> issues = [
    Issue(
        id: "1",
        daysLeft: 9,
        totalAmaount: 12.765,
        amount: 12.0,
        title: "Clean water for refugess camp",
        category: 'Humanity',
        categoryIcon: Icons.favorite_border_outlined,
        imageUrl: "assets/images/camp.webp"),
    Issue(
      id: "2",
      amount: 17.786,
      daysLeft: 12,
      totalAmaount: 50.65,
      categoryIcon: Icons.book,
      imageUrl: "assets/images/education.webp",
      title: "Help refugee get better education",
      category: 'Education',
    ),
    Issue(
        id: "3",
        totalAmaount: 500,
        categoryIcon: Icons.travel_explore,
        daysLeft: 9,
        amount: 202.765,
        title: "Help for bushfire",
        category: 'Environment',
        imageUrl: "assets/images/environment.webp"),
    Issue(
      id: "4",
      amount: 17.786,
      totalAmaount: 41,
      categoryIcon: Icons.healing_outlined,
      daysLeft: 12,
      category: 'Health',
      imageUrl: "assets/images/health.webp",
      title: "Help for heart transpalent surgery",
    ),
  ].obs;
}
