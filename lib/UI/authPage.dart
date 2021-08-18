import 'package:flutter/material.dart';
import 'package:lab4/enum/appState.dart';
import 'package:lab4/model/authModel.dart';
import 'package:lab4/model/authStateModel.dart';
import 'package:lab4/UI/baseView.dart';

class AuthPage extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final AuthModel authModel;

  AuthPage({
    required this.emailController,
    required this.passwordController,
    required this.authModel,
  });

  @override
  Widget build(BuildContext context) {
    return BaseView<AuthStateModel>(builder: (context, authStateModel, __) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Email"),
                  controller: emailController,
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(hintText: "Password"),
                ),
                authModel.viewState == ViewState.Busy
                    ? CircularProgressIndicator()
                    : RaisedButton(
                        child: Text(
                            authStateModel.switchAuthenticationText(authModel)),
                        color: Colors.cyanAccent,
                        onPressed: () {
                          authStateModel.switchAuthenticationMethod(
                              authModel, emailController, passwordController);
                        }),
                InkWell(
                  onTap: () {
                    authStateModel.switchAuthenticationState(authModel);
                  },
                  child:
                      Text(authStateModel.switchAuthenticationOption(authModel)),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
