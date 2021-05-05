import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

import 'marketplace.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              context.beamToNamed('/$CART');
            },
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (_, i) => ListTile(
          title: Text('${products[i].id} - ${products[i].name}'),
          onTap: () {
            context.beamToNamed(
              '/$PRODUCTS/${products[i].id}',
              data: {
                'product': products[i],
              },
            );
          },
        ),
        itemCount: products.length,
      ),
    );
  }
}
