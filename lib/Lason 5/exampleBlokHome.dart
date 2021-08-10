import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement/Lason%205/CounterBlok.dart';
import 'package:statemanagement/Lason%205/counterEvient.dart';

class MyAppExBlokHome extends StatelessWidget {
  const MyAppExBlokHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//        home: BlocProvider<CountreBloc>(
//      create: (context) => CountreBloc(0),
//      child: Home5(),
//    )

    );
  }
}

class Home5 extends StatelessWidget {
  const Home5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//    CountreBloc CB = BlocProvider.of<CountreBloc>(context);
    return Scaffold(
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
//                  CB.add(CounterEvent.add);
                },
                icon: Icon(Icons.add,size: 30,)),
//            BlocBuilder<CountreBloc, int>(builder: (context, state) {
//              return Text('$state');
//            }

//            ),
            IconButton(
                onPressed: () {
//                  CB.add(CounterEvent.remove);
                },
                icon: Icon(Icons.remove,size: 30,)),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('An example of Bloh'),
      ),
    );
  }
}
