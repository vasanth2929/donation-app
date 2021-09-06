import 'package:donation_app/widgets/common/util.dart';
import 'package:donation_app/widgets/detail/topbar.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  Widget card(String title, String value) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 100,
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey[100]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            value,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,color:  Color(0xFF5fc9c8)),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Topbar(
                  title: 'Payment',
                  showMore: false,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Donation for",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[100]),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/education.webp"))),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Clean water for refugess camp",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                card("Donation amount", "\$100"),
                SizedBox(
                  height: 20,
                ),
                card("Reference number", "#2343der"),
                SizedBox(
                  height: 20,
                ),
                card("Payment method", "Patym"),
                SizedBox(height: 50,),
                Btn(title: "Confirm")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
