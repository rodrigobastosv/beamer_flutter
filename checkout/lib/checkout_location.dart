import 'package:beamer/beamer.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'pages/pages.dart';

class CheckoutLocation extends BeamLocation {
  CheckoutLocation(BeamState state) : super(state);

  @override
  List<BeamPage> pagesBuilder(BuildContext context, BeamState state) {
    return [
      BeamPage(
        key: ValueKey('cart'),
        child: CartPage(),
      ),
      if (state.uri.pathSegments.contains(PAYMENT))
        BeamPage(
          key: ValueKey('payment'),
          child: PaymentPage(),
        ),
    ];
  }

  @override
  List<String> get pathBlueprints => [
        '/$CART',
        '/$PAYMENT',
      ];
}
