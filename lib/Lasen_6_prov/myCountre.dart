import 'package:flutter/foundation.dart';

class MyCountre extends ChangeNotifier {
  int counter = 0;

  inc() {
    counter++;
    // لاعلام انه قام بتغيير شيى بالكلاس
    // نادي على كل المشتركين بان هناك قيمة قد تغيرت
    notifyListeners();
  }
}
