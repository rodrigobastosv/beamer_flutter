import 'package:flutter/material.dart';

import 'marketplace.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({Key key, @required this.productId})
      : super(key: key);

  final String productId;

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  var product;

  @override
  void initState() {
    product = products.firstWhere((p) => p.id == int.parse(widget.productId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.backpack),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        child: Center(
          child: Text('${widget.productId} - ${product.name}'),
        ),
      ),
    );
  }
}
