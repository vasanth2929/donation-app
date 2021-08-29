import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
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
          color: Color(0xFF5fc9c8), borderRadius: BorderRadius.circular(10)),
    );
  }
}
