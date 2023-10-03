import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcheckup/modules/home_module/controller/homeController.dart';
import 'package:healthcheckup/modules/home_module/models/popularTestModel.dart';
import 'package:healthcheckup/modules/home_module/services/homeServices.dart';
import 'package:healthcheckup/ui_utils/app_CustomText.dart';
import 'package:healthcheckup/ui_utils/app_colors.dart';

class PopularLabTestCard extends StatelessWidget {
  final PopularTestModel popularTestCardModel;
  bool? cartItem = false;
  PopularLabTestCard(this.popularTestCardModel, {super.key, this.cartItem});

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
          height: 32,
          decoration: BoxDecoration(
              color: AppColors.darkbluewithopacity,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Center(
              child: AppText.appText(
                  text: popularTestCardModel.title!,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500))),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // test count with verify icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.appText(
                    text: "Includes ${popularTestCardModel.testCount} tests",
                    textStyle: TextStyle(color: AppColors.textColor1),
                  ),
                  Container(
                    height: 27,
                    width: 30,
                    decoration: BoxDecoration(
                      color: AppColors.lightblue,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.verified_user,
                      color: Colors.white,
                      size: 14,
                    )),
                  )
                ],
              ),

              const SizedBox(
                height: 6,
              ),
              // Get report in x hours
              AppText.appText(
                  text: "Get report in 24 hour",
                  textStyle:
                      TextStyle(color: AppColors.textColor1, fontSize: 9)),

              // apptext of price in row with cancelled price
              Row(children: [
                AppText.appText(
                    text: "₹ ${popularTestCardModel.price}",
                    textStyle: const TextStyle(
                        color: AppColors.darkblue,
                        fontSize: 13,
                        fontWeight: FontWeight.w500)),
                const SizedBox(
                  width: 5,
                ),
                AppText.appText(
                    text: "${popularTestCardModel.cancelledPrice}",
                    textStyle: TextStyle(
                        color: AppColors.textColor1,
                        fontSize: 9,
                        decoration: TextDecoration.lineThrough))
              ]),
              const SizedBox(
                height: 15,
              ),
              // add to cart button with color change on click from white to darkblue
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    if (cartItem == true) {
                      HomeServices.removeFromCart(popularTestCardModel.id!);
                      Get.find<HomeController>().removeCartItemCount();
                    } else {
                      HomeServices.addToCart(popularTestCardModel.id!);
                      Get.find<HomeController>().addCartItemCount();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          !cartItem! ? AppColors.darkblue : AppColors.lightblue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))),
                  child: AppText.appText(
                      text: "Add to Cart",
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              // view details button
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: AppColors.darkblue),
                          borderRadius: BorderRadius.circular(6),
                        )),
                    child: AppText.appText(
                      text: "View Details",
                      textStyle: const TextStyle(
                          color: AppColors.darkblue, fontSize: 12),
                    )),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
