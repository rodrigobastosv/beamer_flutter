import 'package:beamer/beamer.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:marketplace/marketplace.dart';
import 'package:checkout/checkout.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routerDelegate = BeamerRouterDelegate(
      locationBuilder: (state) {
        if (state.uri.pathSegments.contains(PRODUCTS)) {
          return MarketplaceLocation(state);
        } else if (state.uri.pathSegments.contains(CART) ||
            state.uri.pathSegments.contains(PAYMENT)) {
          return CheckoutLocation(state);
        }
        return OnboardingLocation(state);
      },
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: BeamerRouteInformationParser(),
      routerDelegate: routerDelegate,
      backButtonDispatcher: BeamerBackButtonDispatcher(
        delegate: routerDelegate,
      ),
    );
  }
}
