import 'package:donation_app/models/issue_model.dart';
import 'package:get/get.dart';

class DonationController extends GetxController {
  final RxString username = "Preethi".obs;

  List<Issue> issues = [
    Issue(
        id: "1",
        daysLeft: 9,
        amount: 12.765,
        title: "Clean water for refugess camp",
        imageUrl: "assets/images/camp.webp"
        // imageUrl:
        //     "https://cdn.pixabay.com/photo/2019/01/16/14/16/people-3935983__340.jpg"
        ),
    Issue(
      id: "2",
      amount: 17.786,
      daysLeft: 12,
      imageUrl: "assets/images/education.webp",
      // imageUrl:
      //     "https://cdn.pixabay.com/photo/2018/02/07/18/30/people-3137670__340.jpg",
      title: "Help refugee get better education",
    ),
    Issue(
        id: "3",
        daysLeft: 9,
        amount: 202.765,
        title: "Help for bushfire",
        imageUrl: "assets/images/environment.webp"
        // imageUrl:
        //     "https://cdn.pixabay.com/photo/2019/08/25/13/19/fire-4429478__340.jpg"
        ),
    Issue(
      id: "4",
      amount: 17.786,
      daysLeft: 12,
      imageUrl: "assets/images/health.webp",
      // imageUrl:
      //     "https://cdn.pixabay.com/photo/2015/07/10/21/00/hospital-840135__340.jpg",
      title: "Help for heart transpalent surgery",
    ),
  ].obs;
}
