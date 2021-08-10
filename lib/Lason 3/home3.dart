import 'dart:math';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:statemanagement/Lason%203/cardTetailse.dart';
import 'package:statemanagement/Lason%203/product.dart';
import 'package:statemanagement/Lason%203/shopingCard.dart';

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShoppingCart(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home3(),
      ),
    );
  }
}

class Home3 extends StatelessWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Product3> items = List.generate(
        100,
        (i) => Product3(
            name: 'product $i', pries: Random().nextInt(500), isCheck: false));

    ShoppingCart? cart = ShoppingCart.of(context);
    return StatefulBuilder(builder: (context, StateSetter setState) {
      return Scaffold(
        appBar: AppBar(
          actions: [
            Container(
              margin: EdgeInsets.only(right: 15, top: 15),
              child: Badge(
                badgeContent: Text(
                  "${cart!.product3.length}",
                  style: TextStyle(color: Colors.white),
                ),
                child: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CardDitelse3()));
                  },
                ),
              ),
            )
          ],
          title: Text('Shoping Card'),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, i) {
              return Card(
                margin: EdgeInsets.all(10),
                child: ListTile(
                  title: Row(
                    children: [
                      Expanded(child: Text(items[i].name)),
                      Checkbox(
                        value: items[i].isCheck,
                        onChanged: (value) {
                          setState(() {
                            items[i].isCheck = !items[i].isCheck;

                            if (items[i].isCheck) {
                              cart.product3.add(items[i]);
                            } else {
                              cart.product3.remove(items[i]);
                            }
                          });
                        },
                      )
                    ],
                  ),
                  subtitle: Text('${items[i].pries} \$'),
                ),
              );
            }),
      );
    });
  }
}
