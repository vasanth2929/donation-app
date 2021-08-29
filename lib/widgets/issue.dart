import 'package:flutter/material.dart';

class Issue extends StatelessWidget {
  final title;
  final amount;
  final daysLeft;
  final imageUrl;

  Issue(
      {required this.title,
      required this.amount,
      required this.daysLeft,
      required this.imageUrl});

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 320,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(imageUrl)))),
          SizedBox(
            height: 15,
          ),
          Text(
            title,
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
                "\$$amount",
                style: TextStyle(
                    color: Color(0xFF5fc9c8),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "$daysLeft Days left",
                style: TextStyle(color: Colors.grey[400]),
              )
            ],
          )
        ],
      ),
    );
  }
}
