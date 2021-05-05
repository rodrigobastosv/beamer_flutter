import 'package:core/route_utils.dart';
import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('cart'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.payment),
        onPressed: () => context.beamToNamed('/$PAYMENT'),
      ),
    );
  }
}
