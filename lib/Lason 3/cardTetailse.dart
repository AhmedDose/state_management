import 'package:flutter/material.dart';
import 'package:statemanagement/Lason%203/shopingCard.dart';

class CardDitelse3 extends StatelessWidget {
  const CardDitelse3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cart = ShoppingCart.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Details'),
      ),
      body: Center(
        child: Text(
          '${cart!.product3.length} Selectad',
          style: Theme.of(context).textTheme.display1,
        ),
      ),
    );
  }
}
