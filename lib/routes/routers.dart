import 'package:flutter/material.dart';
import 'package:lab4/UI/homePage.dart';
import 'package:lab4/UI/landingPage.dart';
class Routers {
  static Route<dynamic>  generateRoute(RouteSettings settings){
             switch(settings.name){
               case 'home':
                   return MaterialPageRoute(builder: (_) =>  HomePage());
                case "landing":
                     return MaterialPageRoute(builder: (_) =>  LandingPage()); // LandingPage
                default:
                     return MaterialPageRoute(
                       builder: (_){
                         return Scaffold(body: Center(child: Text("No routes defind for ${settings.name}"),),);
                       }
                       );
             }
  }

}