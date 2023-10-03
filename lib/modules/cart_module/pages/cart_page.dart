import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcheckup/modules/cart_module/controller/cart_controller.dart';
import 'package:healthcheckup/modules/cart_module/pages/components/billCard.dart';
import 'package:healthcheckup/modules/cart_module/pages/components/dateWidget.dart';
import 'package:healthcheckup/modules/cart_module/pages/components/detailsCard.dart';
import 'package:healthcheckup/modules/cart_module/pages/components/orderCard.dart';
import 'package:healthcheckup/modules/successPageModule/pages/sucessPage.dart';
import 'package:healthcheckup/ui_utils/app_CustomText.dart';
import 'package:healthcheckup/ui_utils/app_colors.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});
  DateTimeController timerController = Get.put(DateTimeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
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
            text: "My Cart", textStyle: const TextStyle(color: Colors.black)),
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
      // body
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText.appText(
                text: "Order Review",
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.darkblue)),
            const SizedBox(
              height: 20,
            ),
            const OrderCard(),
            const SizedBox(
              height: 15,
            ),
            Datewidget(),
            const SizedBox(
              height: 15,
            ),
            const BillCard(),
            const SizedBox(
              height: 15,
            ),
            const DetailsCard(),
            Obx(() => SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed:
                        (timerController.selectedDate == DateTime(2023, 1, 1) ||
                                timerController.selectedTime.value == "")
                            ? () {}
                            : () {
                                Get.off(() => SuccessPage());
                              },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: (timerController.selectedDate ==
                                    DateTime(2023, 1, 1) ||
                                timerController.selectedTime.value == "")
                            ? const Color.fromRGBO(176, 176, 176, 1)
                            : AppColors.darkblue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    child: const Center(
                      child: Text("Schedule"),
                    ),
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
