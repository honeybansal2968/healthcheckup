import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcheckup/modules/cart_module/controller/cart_controller.dart';
import 'package:healthcheckup/modules/home_module/pages/homePage.dart';

import '../../../ui_utils/app_CustomText.dart';
import '../../../ui_utils/app_colors.dart';

class SuccessPage extends StatelessWidget {
  SuccessPage({super.key});
  DateTimeController timerController = Get.find<DateTimeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shadowColor: Colors.white,
          elevation: 0,
          backgroundColor: Colors.white,
          title: AppText.appText(
              text: "Success", textStyle: const TextStyle(color: Colors.black)),
          actions: [
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.more_vert,
                color: AppColors.lightblue,
              ),
            )
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.textColor1.withOpacity(0.1),
                      )),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Image.asset(
                            "assets/images/image.png",
                            width: 200,
                            height: 200,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                            "Lab tests have been scheduled successfully, You will receive a mail of the same. ",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                            "${formatDate(timerController.selectedDate.value)} | ${timerController.selectedTime.value}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.textColor1, fontSize: 16)),
                      ]),
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.off(() => const HomePage());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.darkblue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    child: const Center(
                      child: Text("Back to Home"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  String formatDate(DateTime date) {
    String day = date.day.toString().padLeft(2, '0');
    String month = getMonthName(date.month);
    String year = date.year.toString();

    return '$day $month $year';
  }

  String getMonthName(int month) {
    const List<String> monthNames = [
      'Jan',
      'Feb',
      'Mar',
      'April',
      'May',
      'June',
      'July',
      'Aug',
      'Sept',
      'Oct',
      'Nov',
      'Dec'
    ];

    return monthNames[month - 1]; // Adjust for 0-based index
  }
}
