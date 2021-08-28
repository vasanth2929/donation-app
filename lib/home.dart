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
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let's help each others",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Jancy",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                Expanded(
                  child: Text(''),
                ),
                Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.notifications_outlined)
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    child: Icon(
                      Icons.favorite_rounded,
                      color: Color(0xFFe88293),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          text: "No one has ever become\n",
                          children: [TextSpan(text: "poor by giving")]))
                ],
              ),
              padding: EdgeInsets.all(30),
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFF5fc9c8),
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Container(
              height: 45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 0,
                    margin: EdgeInsets.only(top: 10, right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(4)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite_border_outlined,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Humanity")
                      ],
                    ),
                  ),
                  Container(
                    height: 0,
                    margin: EdgeInsets.only(top: 10, right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(4)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.health_and_safety_outlined,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Health")
                      ],
                    ),
                  ),
                  Container(
                    height: 0,
                    margin: EdgeInsets.only(top: 10, right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(4)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.book,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Education")
                      ],
                    ),
                  ),
                  Container(
                    height: 0,
                    margin: EdgeInsets.only(top: 10, right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(4)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.travel_explore,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Environment")
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
