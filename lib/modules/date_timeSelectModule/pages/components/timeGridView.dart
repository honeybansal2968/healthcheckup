import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcheckup/modules/cart_module/controller/cart_controller.dart';
import 'package:healthcheckup/ui_utils/app_CustomText.dart';
import 'package:healthcheckup/ui_utils/app_colors.dart';

class TimeGridView extends StatelessWidget {
  final DateTimeController timeController = Get.find<DateTimeController>();
  List<String> times = [
    '8:00 AM',
    '9:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 PM',
    '1:00 PM',
    '2:00 PM',
    '3:00 PM',
    '4:00 PM',
    '5:00 PM',
    '6:00 PM',
    '7:00 PM',
    '8:00 PM',
  ];

  TimeGridView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10,
            childAspectRatio: 3.0,
          ),
          itemCount: times.length,
          itemBuilder: (context, index) {
            final time = '${(index + 8).toString().padLeft(2, '0')}:00';
            return Obx(
              () => GestureDetector(
                onTap: () {
                  timeController
                      .updateselectedTime('$time ${index < 6 ? 'AM' : 'PM'}');
                  timeController.updatetime(times[index]);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: timeController.selectedTime.value ==
                            '$time ${index < 6 ? 'AM' : 'PM'}'
                        ? AppColors.darkblue
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.darkblue, width: 1.5),
                  ),
                  alignment: Alignment.center,
                  child: AppText.appText(
                      text: times[index],
                      textStyle: TextStyle(
                          color: timeController.selectedTime.value ==
                                  '$time ${index < 6 ? 'AM' : 'PM'}'
                              ? Colors.white
                              : Colors.black)),
                ),
              ),
            );
          },
        ),
        const SizedBox(
          height: 25,
        ),
        Obx(() => SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: (timeController.selectedDate == DateTime(2023, 1, 1) ||
                            timeController.selectedTime.value == "")
                        ? () {}
                        : () {
                            timeController.updateConfirm();
                            Get.back();
                          },
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        (timeController.selectedDate == DateTime(2023, 1, 1) &&
                                timeController.selectedTime.value == "")
                            ? Colors.grey
                            : (timeController.selectedDate ==
                                        DateTime(2023, 1, 1) ||
                                    timeController.selectedTime.value == "")
                                ? Colors.grey
                                : AppColors.darkblue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                child: Center(
                  child: AppText.appText(
                      text: (timeController.selectedDate ==
                                  DateTime(2023, 1, 1) &&
                              timeController.selectedTime.value == "")
                          ? "Next"
                          : "Confirm",
                      textStyle: const TextStyle(color: Colors.white)),
                ),
              ),
            ))
      ],
    );
  }
}
