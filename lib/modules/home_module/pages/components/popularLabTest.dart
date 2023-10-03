import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcheckup/modules/cart_module/models/addToCartModel.dart';
import 'package:healthcheckup/modules/home_module/controller/homeController.dart';
import 'package:healthcheckup/modules/home_module/models/popularTestModel.dart';
import 'package:healthcheckup/modules/home_module/pages/components/popularLabTestCard.dart';
import 'package:healthcheckup/ui_utils/app_CustomText.dart';
import 'package:healthcheckup/ui_utils/app_colors.dart';

class PopularLabTests extends StatelessWidget {
  PopularLabTests({super.key});
  HomeController homeController = Get.put(HomeController());
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
        StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('popular_tests')
                .snapshots(),
            builder: (context, popularTests) {
              if (popularTests.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.pink,
                  ),
                );
              }

              if (popularTests.hasData) {
                return StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection('add_to_cart_items')
                        .snapshots(),
                    builder: (context, addToCartItems) {
                      if (addToCartItems.connectionState ==
                          ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (addToCartItems.hasData) {
                        List<PopularTestModel> popularTestModel = [];
                        for (var popularTests in popularTests.data!.docs) {
                          if (popularTests.exists) {
                            popularTestModel.add(PopularTestModel.fromJson(
                                popularTests.data() as Map<String, dynamic>));
                          }
                        }
                        AddToCartModel cartItems = AddToCartModel();
                        if (addToCartItems.data!.docs.isNotEmpty) {
                          for (var addToCartItem in addToCartItems.data!.docs) {
                            if (addToCartItem.exists) {
                              cartItems = AddToCartModel.fromJson(
                                  addToCartItem.data() as Map<String, dynamic>);
                            }
                          }

                          print("cartItems $cartItems");
                        } else {
                          print("empty");
                        }

                        return GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: popularTestModel.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 15,
                              mainAxisExtent: 220,
                              crossAxisCount: 2,
                            ),
                            itemBuilder: (context, index) {
                              homeController.cartItemCount =
                                  cartItems.popularTestId!.length;
                              return cartItems.popularTestId!.isNotEmpty
                                  ?
                                  // check if current popular test id is present in cart items
                                  PopularLabTestCard(
                                      popularTestModel[index],
                                      cartItem: cartItems.popularTestId!.any(
                                          (element) =>
                                              element ==
                                              popularTestModel[index].id),
                                    )
                                  : PopularLabTestCard(
                                      popularTestModel[index],
                                      cartItem: false,
                                    );
                            });
                      }
                      return const Center(
                        child: Text("Something went wrongg"),
                      );
                    });
              }
              if (popularTests.hasError) {
                return Text(popularTests.error.toString());
              }
              print("statusCode ${popularTests.connectionState}");
              return const Center(
                child: Text("Something went wronggg"),
              );
            })
      ],
    );
  }
}
