import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/Lasen_6_prov/myCountre.dart';

class MyApp6 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: home6(),
    );
  }
}

class home6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('provider'),
      ),
      // ChangeNotifierProvider = يزودك من الكلاس او النوع الذي تريد ان تكلمه
      body: ChangeNotifierProvider<MyCountre>(
        create: (_) => MyCountre(),
        child: Center(
          child: Column(
            children: [
//              mycountre = MyCountre
              Consumer<MyCountre>(
                builder: (context, mycountre, child) =>
                    Text('${mycountre.counter}'),
              ),

              Consumer<MyCountre>(
                builder: (context, mycountre, child) => IconButton(
                    onPressed: () {
                      mycountre.inc();
                    },
                    icon: Icon(Icons.add)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
