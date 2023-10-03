import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcheckup/modules/home_module/helper/popularTestDemoCards.dart';
import 'package:healthcheckup/modules/home_module/models/popularTestModel.dart';
import 'package:healthcheckup/modules/home_module/pages/components/popularLabTestCard.dart';
import 'package:healthcheckup/ui_utils/app_CustomText.dart';
import 'package:healthcheckup/ui_utils/app_colors.dart';

class PopularLabTests extends StatelessWidget {
  const PopularLabTests({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AppText.appText(
                text: "Popular Lab Tests",
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.darkblue)),
            // view more text with icon
            const Spacer(),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  AppText.appText(
                      text: "View More",
                      textStyle: const TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.darkblue,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: AppColors.darkblue)),
                  const SizedBox(
                    width: 4,
                  ),
                  const Icon(
                    Icons.arrow_forward_rounded,
                    color: AppColors.darkblue,
                    size: 14,
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        GridView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 20,
            mainAxisSpacing: 15,
            mainAxisExtent: 220,
            crossAxisCount: 2,
          ),
          children: PopularTestCardDemo.popularTestCardModel.map((e) {
            return PopularLabTestCard(
              e,
            );
          }).toList(),
        )
      ],
    );
  }
}
