import 'dart:math';

import 'package:ecommerce/33c_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){


  testWidgets("description", (WidgetTester tester) async{
    tester.pumpWidget(MaterialApp(home: Widget33B(),));

    // Expect that there are 5 ListTiles with specific text in the ListView
    expect(find.text('Item 0'), findsOneWidget);
    expect(find.text('Item 1'), findsOneWidget);
    expect(find.text('Item 2'), findsOneWidget);
    expect(find.text('Item 3'), findsOneWidget);
    expect(find.text('Item 4'), findsOneWidget);

    // Verify that there are no other ListTiles present
    expect(find.byKey(Key('listTile')),
        findsNWidgets(5)); //
  });
}