import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lab4/model/authModel.dart';
import 'package:lab4/UI/authPage.dart';

import 'package:lab4/UI/baseView.dart';
import 'package:lab4/UI/homePage.dart';

// ignore: must_be_immutable
class LandingPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseView<AuthModel>(
      builder: (context, authModel, child) => StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            return snapshot.hasData
                ? HomePage()
                : AuthPage(
                    emailController: emailController,
                    passwordController: passwordController,
                    authModel: authModel,
                  );
          }),
    );
  }
}
