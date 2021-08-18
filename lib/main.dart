import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lab4/routes/routers.dart';

import 'locator.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'landing',
      onGenerateRoute: Routers.generateRoute,
      
    );
  }
}