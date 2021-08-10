// - InheritedWidget Counter

import 'package:flutter/material.dart';
// هنا تقوم بجميع الداتا التي تريد ان تكون shared

// الوصول الى البانات من اكثر من صفحة

class CountProvider extends InheritedWidget {
  int countre = 0;
  Widget child;

  CountProvider({required this.child}) : super(child: child);
  @override
  bool updateShouldNotify(CountProvider oldWidget) {
    return oldWidget.countre != countre;
  }

  static CountProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType();
}
