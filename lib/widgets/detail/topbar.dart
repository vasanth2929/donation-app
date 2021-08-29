import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Topbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
        Text(
          "Detail",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Icon(Icons.more_vert)
      ],
    );
  }
}
