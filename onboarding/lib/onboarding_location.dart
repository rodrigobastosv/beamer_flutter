import 'package:beamer/beamer.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'pages/pages.dart';

class OnboardingLocation extends BeamLocation {
  OnboardingLocation(BeamState state) : super(state);

  @override
  List<BeamPage> pagesBuilder(BuildContext context, BeamState state) {
    return [
      BeamPage(
        key: ValueKey('sign-in'),
        child: SignInPage(),
      ),
      if (state.uri.pathSegments.contains('sign-up'))
        BeamPage(
          key: ValueKey('sign-up'),
          child: SignUpPage(),
        ),
    ];
  }

  @override
  List<String> get pathBlueprints => [
        '/$SIGN_IN',
        '/$SIGN_UP',
      ];
}
