import 'package:get/get.dart';

class DateTimeController extends GetxController {
  RxBool isconfirmed = false.obs;
  // update confirm bool
  void updateConfirm() {
    isconfirmed.value = true;
    update();
  }
  RxString time="".obs;
  // update time
  void updatetime(String newTime) {
    time.value = newTime;
    update();
  }
  RxString selectedTime = ''.obs;

  void updateselectedTime(String newTime) {
    selectedTime.value = newTime;
    update();
  }

  Rx<DateTime> selectedDate = DateTime(2023, 1, 1).obs;
  // update date
  void updateDate(DateTime newDate) {
    selectedDate.value = newDate;
    update();
  }
}
