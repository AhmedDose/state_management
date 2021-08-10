import 'package:flutter/material.dart';
import 'package:statemanagement/Lason%202/counterProvider.dart';
// - InheritedWidget Counter

// مشاركة البيانات في اكثر من صفخحة


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CountProvider(
        child: MaterialApp(
      home: Home2(),
    ));
  }
}

class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = CountProvider.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: StatefulBuilder(
          builder: (context, StateSetter setState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${provider!.countre}',
                  style: Theme.of(context).textTheme.display1,
                ),
                SizedBox(
                  height: 20,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      provider.countre++;
                    });
                  },
                  icon: Icon(Icons.add),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
