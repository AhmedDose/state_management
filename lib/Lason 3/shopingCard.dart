import 'package:flutter/cupertino.dart';
import 'package:statemanagement/Lason%203/product.dart';

import 'package:collection/collection.dart';

class ShoppingCart extends InheritedWidget {
  List<Product3> product3 = [];
  Widget child;

  ShoppingCart({required this.child}) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // نقوم بمقارة المصفوفتين عن طريق الكلاس التالي
    // /! لا يساوو بعض
    return !IterableEquality().equals(product3, product3);
  }

  static ShoppingCart? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType();
}
