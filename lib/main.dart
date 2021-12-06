import 'package:animated_splash/animated_splash.dart';
import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:temp/forgot.dart';
import 'package:temp/movies.dart';
import 'package:temp/register.dart';
import 'cinema.dart';
import 'login.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homecinema()/*CustomSplash(
              imagePath: 'assets/flatlogo.png',
              home: Home(),
              duration: 2500,
              backGroundColor: Colors.deepPurpleAccent,
              animationEffect: 'fade-in',
              logoSize: 200.0,
            ),*/
    );
  } 
}
