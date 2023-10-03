import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcheckup/modules/home_module/pages/components/popularPackageCard.dart';
import 'package:healthcheckup/ui_utils/app_CustomText.dart';
import 'package:healthcheckup/ui_utils/app_colors.dart';

class PopularPackages extends StatelessWidget {
  const PopularPackages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.appText(
            text: "Popular Packages",
            textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.darkblue)),
        const SizedBox(
          height: 10,
        ),
        const Center(child: PopularPackagesCard())
      ],
    );
  }
}
