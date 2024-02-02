import 'package:ecommerce/33C_Class.dart';
import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/repositories/product_repositories.dart';
import 'package:ecommerce/services/firebase_service.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //
  // ///given when then
  // test("given class33 "
  //     "when add value "
  //     "then value of variable a increase", () {
  //   Class33 class33 = Class33();
  //
  //   class33.addValue();
  //
  //   expect(class33.a, 2);
  // });
  ///given when then
  test(
      "given product repo"
      "when add products"
      "then product added to firestore", () async {
    FirebaseService.db = FakeFirebaseFirestore();
    ProductRepository repo = ProductRepository();

    var data = ProductModel(
        productDescription: "desc",
        categoryId: "1",
        productName: "test",
        id: "5",
        imagePath: "",
        imageUrl: "",
        userId: "9",
        productPrice: 45);
    final response = await repo.addProducts(product: data);

    expect(response, true);
  });
}
