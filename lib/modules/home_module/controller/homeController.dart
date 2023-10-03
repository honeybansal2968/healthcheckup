import 'package:get/get.dart';

class HomeController extends GetxController {
  int cartItemCount = 0;
  setCartItemCount(int value) {
    cartItemCount = value;
    update();
  }

  addCartItemCount() {
    cartItemCount++;
    update();
  }

  removeCartItemCount() {
    cartItemCount--;
    update();
  }
}
