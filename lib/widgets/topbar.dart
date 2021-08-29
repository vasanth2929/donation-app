import 'package:donation_app/controller/donation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Topbar extends StatelessWidget {
  final DonationController donation = Get.put(DonationController());
  @override
  Widget build(BuildContext context) {
    return Row(
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
            Obx(() => Text(
                  "${donation.username}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ))
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
    );
  }
}
