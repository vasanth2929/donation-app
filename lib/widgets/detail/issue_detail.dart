import 'package:donation_app/models/issue_model.dart';
import 'package:flutter/material.dart';

class IssueDetail extends StatelessWidget {
  final Issue issue;

  IssueDetail({required this.issue});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(issue.imageUrl))),
            ),
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10)),
                  height: 200,
                ))
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          issue.title,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "9/40 Days left",
          style:
              TextStyle(color: Color(0xFF5fc9c8), fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
