import 'package:flutter/material.dart';
import 'package:healthcheckup/modules/cart_module/pages/components/dateWidget.dart';
import 'package:healthcheckup/ui_utils/app_CustomText.dart';
import 'package:healthcheckup/ui_utils/app_colors.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          border: Border.all(
            color: AppColors.textColor1.withOpacity(0.2),
          )),
      child: Column(children: [
        // test title
        Container(
          height: 39,
          decoration: BoxDecoration(
              color: AppColors.darkbluewithopacity,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Center(
              child: AppText.appText(
                  text: "Pythology Test",
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500))),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // test count with verify icon
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.appText(
                    text: "Thyroid Profile",
                    textStyle:
                        TextStyle(color: AppColors.textColor1, fontSize: 15),
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      AppText.appText(
                          text: "₹ 600/-",
                          textStyle: const TextStyle(
                              color: AppColors.lightblue,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AppText.appText(
                              text: "1000",
                              textStyle: TextStyle(
                                  color: AppColors.textColor1,
                                  fontSize: 11,
                                  decoration: TextDecoration.lineThrough))
                        ],
                      )
                    ],
                  )
                ],
              ),

              const SizedBox(
                height: 6,
              ),

              SizedBox(
                width: 130,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shadowColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: AppColors.darkblue),
                          borderRadius: BorderRadius.circular(50))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.delete_outline_outlined,
                        color: AppColors.darkblue,
                      ),
                      AppText.appText(
                          text: "Remove",
                          textStyle: const TextStyle(
                              color: AppColors.darkblue,
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shadowColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: AppColors.darkblue),
                          borderRadius: BorderRadius.circular(50))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.upload_outlined,
                        color: AppColors.darkblue,
                      ),
                      AppText.appText(
                          text: "Upload prescription (Optional)",
                          textStyle: const TextStyle(
                              color: AppColors.darkblue,
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
       
      ]),
    );
  }
}
