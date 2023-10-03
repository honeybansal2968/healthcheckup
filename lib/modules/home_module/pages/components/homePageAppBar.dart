import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcheckup/modules/cart_module/pages/cart_page.dart';
import 'package:healthcheckup/modules/home_module/controller/homeController.dart';
import 'package:healthcheckup/ui_utils/app_CustomText.dart';
import 'package:healthcheckup/ui_utils/app_colors.dart';

class HomepageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomepageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: AppText.appText(
          text: "Logo", textStyle: const TextStyle(color: Colors.black)),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 5, top: 6),
          child: Stack(
            children: [
              Positioned(
                top: 16,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    color: AppColors.lightblue,
                    shape: BoxShape.circle,
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 15,
                    minHeight: 15,
                  ),
                  child: Center(
                    child: GetBuilder<HomeController>(
                        init: HomeController(),
                        builder: (cartItemController) {
                          return Text(
                            cartItemController.cartItemCount.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                            textAlign: TextAlign.center,
                          );
                        }),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Get.to(()=>CartPage());
                  },
                  icon: const Icon(
                    CupertinoIcons.cart_fill,
                    size: 24,
                    color: AppColors.darkblue,
                  )),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
