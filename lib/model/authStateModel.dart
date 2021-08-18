import 'package:flutter/material.dart';
import 'package:lab4/enum/appState.dart';

import 'baseModel.dart';
import 'authModel.dart';
class AuthStateModel extends BaseModel {
  switchAuthenticationState(AuthModel authModel) {
    authModel.authState == AuthState.SignIn
        ? authModel.setAuthState(AuthState.SignUp)
        : authModel.setAuthState(AuthState.SignIn);
  }

  switchAuthenticationMethod(
    AuthModel authModel,
    TextEditingController emailController,
    TextEditingController passwordController,
  ) {
    authModel.authState == AuthState.SignIn
        ? authModel.singIn(
            emailController.text,
            passwordController.text,
          )
        : authModel.createNewUser(
            emailController.text,
            passwordController.text,
          );
  }

  switchAuthenticationText(AuthModel authModel) {
    return authModel.authState == AuthState.SignIn ? "Sign In" : "Sign Up";
  }

  switchAuthenticationOption(AuthModel authModel) {
    return authModel.authState == AuthState.SignIn
        ? "Create account ??"
        : "Already registered ??";
  }
}
