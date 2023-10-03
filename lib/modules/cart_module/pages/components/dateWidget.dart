import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcheckup/modules/cart_module/controller/cart_controller.dart';
import 'package:healthcheckup/modules/date_timeSelectModule/pages/dateTimePage.dart';
import 'package:healthcheckup/ui_utils/app_CustomText.dart';

import '../../../../ui_utils/app_colors.dart';

class Datewidget extends StatelessWidget {
  Datewidget({super.key});
  DateTimeController timerController = Get.find<DateTimeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 21),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.textColor1.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(8)),
      child: Center(
          child: Row(
        children: [
          const Icon(Icons.calendar_month_outlined),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Get.to(() => const DateTimePage());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: AppColors.textColor1.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(8)),
                child: Obx(
                  () => AppText.appText(
                      text: (timerController.selectedDate ==
                                  DateTime(2023, 1, 1) &&
                              timerController.selectedTime.value == "")
                          ? "Select Date"
                          : "${timerController.selectedDate.value.day}/${timerController.selectedDate.value.month}/${timerController.selectedDate.value.year} (${timerController.selectedTime.value})",
                      textStyle:
                          TextStyle(color: AppColors.textColor1, fontSize: 12)),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
