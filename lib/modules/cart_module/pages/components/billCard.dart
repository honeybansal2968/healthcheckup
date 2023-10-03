import 'package:flutter/cupertino.dart';
import 'package:healthcheckup/ui_utils/app_CustomText.dart';
import 'package:healthcheckup/ui_utils/app_colors.dart';

class BillCard extends StatelessWidget {
  const BillCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 21),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.textColor1.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(8)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText.appText(
                text: "M.R.P Total",
                textStyle:
                    TextStyle(color: AppColors.textColor1, fontSize: 11)),
            AppText.appText(
                text: "1400",
                textStyle:
                    TextStyle(color: AppColors.textColor1, fontSize: 11)),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText.appText(
                text: "Discount",
                textStyle:
                    TextStyle(color: AppColors.textColor1, fontSize: 11)),
            AppText.appText(
                text: "400",
                textStyle:
                    TextStyle(color: AppColors.textColor1, fontSize: 11)),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText.appText(
                text: "Amount to be paid",
                textStyle: const TextStyle(
                    color: AppColors.darkblue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            AppText.appText(
                text: "₹ 1000/-",
                textStyle: const TextStyle(
                    color: AppColors.darkblue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            AppText.appText(
                text: "Total Savings",
                textStyle:
                    TextStyle(color: AppColors.textColor1, fontSize: 14)),
            const SizedBox(
              width: 20,
            ),
            AppText.appText(
                text: "₹ 1400/-",
                textStyle: const TextStyle(
                    color: AppColors.darkblue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ],
        )
      ]),
    );
  }
}
