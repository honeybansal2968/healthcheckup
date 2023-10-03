import 'package:cloud_firestore/cloud_firestore.dart';

class HomeServices {
  // method to append popular test's id to firestore add_to_cart_items collection's popular_test_id list
  static Future<void> addToCart(String popularTestId) async {
    // fetch popular test's id from add_to_cart_items from firrestore
    FirebaseFirestore.instance
        .collection('add_to_cart_items')
        .doc("qvlxjbS4O2MgGUcJlRXy")
        .update({
      'popular_test_id': FieldValue.arrayUnion([popularTestId])
    });
  }

  // remove from cart method
  static Future<void> removeFromCart(String popularTestId) async {
    // fetch popular test's id from add_to_cart_items from firrestore
    FirebaseFirestore.instance
        .collection('add_to_cart_items')
        .doc("qvlxjbS4O2MgGUcJlRXy")
        .update({
      'popular_test_id': FieldValue.arrayRemove([popularTestId])
    });
  }
}
