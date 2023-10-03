import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcheckup/ui_utils/app_CustomText.dart';
import 'package:healthcheckup/ui_utils/app_colors.dart';

class PopularPackagesCard extends StatelessWidget {
  const PopularPackagesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: AppColors.textColor1.withOpacity(0.1),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor:
                      AppColors.lightBackgroundColor.withOpacity(0.1),
                  // can't find given icon in material icons
                  child: const Icon(
                    Icons.medication,
                    size: 40,
                    color: AppColors.darkblue,
                  ),
                ),
                // safe container with lightblue color along prior icon of verified user
                Container(
                  width: 60,
                  height: 20,
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: const BoxDecoration(
                      color: AppColors.lightblue,
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: Row(children: [
                    const Icon(
                      Icons.verified_user,
                      size: 12,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    AppText.appText(
                        text: "Safe",
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 12))
                  ]),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            // full body check text

            AppText.appText(
                text: "Full Body checkup",
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w600)),

            const SizedBox(
              height: 8,
            ),
            AppText.appText(
              text: "Includes 92 tests",
              textStyle:
                  TextStyle(color: AppColors.textColor1.withOpacity(0.5)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.appText(
                    text: "\u2022 Blood Glucose Fasting",
                    textStyle:
                        TextStyle(color: AppColors.textColor1.withOpacity(0.5)),
                  ),
                  AppText.appText(
                    text: "\u2022 Liver Function Test",
                    textStyle:
                        TextStyle(color: AppColors.textColor1.withOpacity(0.5)),
                  ),
                ],
              ),
            ),
            AppText.appText(
                text: "View More",
                textStyle: TextStyle(
                    fontSize: 13,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.textColor1.withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                    color: AppColors.textColor1.withOpacity(0.5))),

            const SizedBox(
              height: 15,
            ),
            // row with price and add to cart button
            Row(children: [
              AppText.appText(
                  text: "₹ 500/-",
                  textStyle: const TextStyle(
                      color: AppColors.lightblue,
                      fontSize: 22,
                      fontWeight: FontWeight.w600)),
              // button
              const Spacer(),
              SizedBox(
                width: 130,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: AppColors.darkblue,
                            ),
                            borderRadius: BorderRadius.circular(6))),
                    child: AppText.appText(
                        text: "Add to Cart",
                        textStyle: const TextStyle(
                          color: AppColors.darkblue,
                          fontSize: 12,
                        ))),
              )
            ])
          ]),
        ),
      ),
    );
  }
}
