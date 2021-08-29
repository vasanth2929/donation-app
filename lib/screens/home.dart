import 'package:donation_app/controller/donation_controller.dart';
import 'package:donation_app/widgets/home/category.dart';
import 'package:donation_app/widgets/home/issue.dart';
import 'package:donation_app/widgets/home/main.dart';
import 'package:donation_app/widgets/home/topbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final DonationController controller = Get.put(DonationController());
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
                Obx(() {
                  return Column(
                    children: [
                      ...controller.issues
                          .map((e) => SingleIssue(
                                issue: e,
                              ))
                          .toList(),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
