import 'package:donation_app/models/issue_model.dart';
import 'package:donation_app/screens/payment.dart';
import 'package:donation_app/widgets/common/util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IssueDetail extends StatelessWidget {
  final Issue issue;

  IssueDetail({required this.issue});

  getPercent() {
    return ((issue.amount / issue.totalAmaount) * 100).round();
  }

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
                      fit: BoxFit.cover, image: AssetImage(issue.imageUrl))),
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
                )),
            Positioned(
                top: 20,
                left: 20,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5)),
                  padding:
                      EdgeInsets.only(left: 10, right: 15, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Icon(
                        issue.categoryIcon,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        issue.category,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
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
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          height: 135,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Donation raised",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$${issue.amount}",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Positioned(child: LayoutBuilder(
                          builder: (b, c) {
                            return TweenAnimationBuilder(
                                tween: Tween<double>(
                                    begin: 0,
                                    end: c.maxWidth * getPercent() / 100),
                                duration: Duration(milliseconds: 800),
                                builder: (BuildContext ctx, double value, _) {
                                  return Container(
                                    height: 10,
                                    width: value,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF5fc9c8),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  );
                                });
                          },
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 1),
                      duration: Duration(milliseconds: 800),
                      builder: (ctx, double v, _) {
                        return Opacity(
                          opacity: v,
                          child: Text("${getPercent()} %",
                              style: TextStyle(
                                  color: Color(0xFF5fc9c8),
                                  fontWeight: FontWeight.bold)),
                        );
                      })
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.only(left: 5, bottom: 20),
          child: Text(
            "Campaign by",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
          height: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Color(0xFF5fc9c8),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Icon(
                    Icons.campaign_outlined,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Abhas Khan",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Verified user",
                    style: TextStyle(
                        color: Color(0xFF5fc9c8), fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Expanded(child: Container()),
              Icon(
                Icons.verified_user,
                size: 25,
                color: Color(0xFF5fc9c8),
              )
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Btn(
          title: "Donate",
          onTap: () {
            Get.to(() => Payment());
          },
        )
      ],
    );
  }
}
