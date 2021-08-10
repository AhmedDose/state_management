
import 'package:flutter/material.dart';




class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material app ',
      home: Home(),
    );
  }
}


class Home extends StatelessWidget {
  int countre = 0;

  @override
  Widget build(BuildContext context) {
    //  StatefulBuilder  في هذه الحالة في كل مرة يقوم باعادة بناء
    //  BuildContextولن يقوم ببناء كامل ال
    return Scaffold(
      appBar: AppBar(
        title: Text('Leason 1'),
      ),
      body: Center(
        child: myCountre(context),
      ),
    );
  }

  Widget myCountre(BuildContext context) {
    //  هنا يجب الارجاع
// StatefulBuilder =تعمل على اعادة بناء قسم معين من الويدجت فقط
    return StatefulBuilder(builder: (context, StateSetter setState) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  countre--;
                });
              },
              icon: Icon(
                Icons.remove,
                size: 34,
              )),
          SizedBox(
            width: 20,
          ),
          Text(
            'my $countre',
            style: TextStyle(color: Colors.black, fontSize: 34),
          ),
          SizedBox(
            width: 20,
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  countre++;
                });
              },
              icon: Icon(
                Icons.add,
                size: 34,
              )),
        ],
      );
    });
  }
}
