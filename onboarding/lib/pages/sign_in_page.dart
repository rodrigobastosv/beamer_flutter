import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 28),
              TextButton(
                onPressed: () => context.beamToNamed('/$PRODUCTS'),
                child: Text('Logar'),
              ),
              SizedBox(height: 12),
              TextButton(
                onPressed: () => context.beamToNamed('/$SIGN_UP'),
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
