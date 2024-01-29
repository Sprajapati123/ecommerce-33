import 'package:ecommerce/viewmodels/test_class.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ///given when then
  ///
  test("given authviewmodel when"
      " addValue then variable"
      " value increase", () {
    TestClass instance = TestClass();

    instance.addValue();

    expect(instance.a, 2);
  });
}
