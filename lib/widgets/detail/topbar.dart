import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Topbar extends StatelessWidget {
  final String title;
  final bool showMore;

  Topbar({required this.title,required this.showMore});
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
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
       showMore ? Icon(Icons.more_vert) : Container()
      ],
    );
  }
}
