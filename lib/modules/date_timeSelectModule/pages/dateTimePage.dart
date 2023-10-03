import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcheckup/modules/date_timeSelectModule/pages/components/calendarWidget.dart';
import 'package:healthcheckup/modules/date_timeSelectModule/pages/components/timeGridView.dart';
import 'package:healthcheckup/ui_utils/app_colors.dart';

import '../../../ui_utils/app_CustomText.dart';

class DateTimePage extends StatelessWidget {
  const DateTimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: AppText.appText(
            text: "Book Appointment",
            textStyle: const TextStyle(color: Colors.black)),
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
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AppText.appText(
              text: "Select Date",
              textStyle: const TextStyle(color: Colors.black, fontSize: 14)),
          const TableBasicsExample(),
          AppText.appText(
              text: "Select Time",
              textStyle: const TextStyle(color: Colors.black, fontSize: 14)),
          const SizedBox(
            height: 10,
          ),
          TimeGridView(),
          
        ]),
      )),
    );
  }
}
