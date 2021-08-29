import 'package:donation_app/models/issue_model.dart';
import 'package:donation_app/screens/detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleIssue extends StatelessWidget {
  final Issue issue;

  SingleIssue({required this.issue});

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 320,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Get.to(() => DetailPage(
                    issue: issue,
                  ));
            },
            child: Container(
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(issue.imageUrl)))),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            issue.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Donation raised",
            style: TextStyle(color: Colors.grey[400]),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${issue.amount}",
                style: TextStyle(
                    color: Color(0xFF5fc9c8),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "${issue.daysLeft} Days left",
                style: TextStyle(color: Colors.grey[400]),
              )
            ],
          )
        ],
      ),
    );
  }
}
