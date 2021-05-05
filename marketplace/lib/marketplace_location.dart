import 'package:beamer/beamer.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'pages.dart';

class MarketplaceLocation extends BeamLocation {
  MarketplaceLocation(BeamState state) : super(state);

  @override
  List<BeamPage> pagesBuilder(BuildContext context, BeamState state) {
    return [
      BeamPage(
        key: ValueKey('products'),
        child: ProductsPage(),
      ),
      if (state.pathParameters.containsKey('productId'))
        BeamPage(
          key: ValueKey('product-id'),
          child: ProductDetailsPage(
            productId: state.pathParameters['productId'],
          ),
        ),
    ];
  }

  @override
  List<String> get pathBlueprints => [
        '/$PRODUCTS',
        '/$PRODUCTS/:productId',
      ];
}
