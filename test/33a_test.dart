import 'dart:math';

import 'package:ecommerce/counter_class.dart';
import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/repositories/product_repositories.dart';
import 'package:ecommerce/services/firebase_service.dart';
import 'package:ecommerce/widget_check_screen.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  FirebaseService.db = FakeFirebaseFirestore();
  ProductRepository repo = ProductRepository();

  ///given when then
  // test(
  //     "given counter class '"
  //     "when add value "
  //     "'then value of a increase by 1", () {
  //   CounterClass ins = CounterClass();
  //
  //   ins.addValue();
  //
  //   expect(ins.a, 7);
  // });

  //add products
  // test(
  //     "given product repo "
  //     "when add product"
  //     "the save data to cloudstore", () async {
  //   var data = ProductModel(
  //       userId: "1",
  //       imageUrl: "",
  //       imagePath: "",
  //       id: "2",
  //       productName: "fsd",
  //       categoryId: "5",
  //       productDescription: "desc",
  //       productPrice: 45);
  //   final res = await repo.addProducts(product: data);
  //
  //   expect(res, true);
  //
  // });

  testWidgets("description", (WidgetTester tester) async {
    tester.pumpWidget(const MaterialApp(
      home: WidgetCheckScreen(),
    ));

    // Expect that there are 5 ListTiles with specific text in the ListView
    expect(find.text('Item 0'), findsOneWidget);
    expect(find.text('Item 1'), findsOneWidget);
    expect(find.text('Item 2'), findsOneWidget);
    expect(find.text('Item 3'), findsOneWidget);
    expect(find.text('Item 4'), findsOneWidget);

    // Verify that there are no other ListTiles present
    expect(find.byKey(const Key('listTile')),
        findsNWidgets(5)); // There should be exactly 5 ListTiles
  });
}
