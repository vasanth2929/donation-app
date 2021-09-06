import 'package:donation_app/widgets/detail/topbar.dart';
import 'package:donation_app/widgets/detail/issue_detail.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final issue;
  const DetailPage({required this.issue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Topbar(title: "Detail",showMore: true,),
                SizedBox(
                  height: 25,
                ),
                IssueDetail(
                  issue: issue,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
