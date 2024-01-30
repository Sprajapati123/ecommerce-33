import 'package:ecommerce/firebase_options.dart';
import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/repositories/auth_repositories.dart';
import 'package:ecommerce/repositories/product_repositories.dart';
import 'package:ecommerce/services/firebase_service.dart';
import 'package:ecommerce/services/local_notification_service.dart';
import 'package:ecommerce/viewmodels/test_class.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {

  FirebaseService.db = FakeFirebaseFirestore();
  ProductRepository repo = ProductRepository();
  test("add products", () async {
    var data  = ProductModel(
      productPrice: 45,
      productDescription: "sesc",
      categoryId: "1",
      productName: "sasa",
      id: "1",
      imagePath: "",
      imageUrl: "",
      userId: "1"
    );
    final res = await repo.addProducts(product: data);
    expect(res, false);
  });
}
