import 'package:flutter/material.dart';
import 'package:lab4/model/authModel.dart';
import 'package:lab4/UI/baseView.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<AuthModel>(
      builder: (context, model, __) => Scaffold(
        body: Center(
          child: RaisedButton(
            color: Colors.cyanAccent,
            child: Text("Log Out"),
            onPressed: () {
              model.logOut();
            },
          ),
        ),
      ),
    );
  }
}