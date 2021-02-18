import 'package:flutter/material.dart';
import 'dart:async';
//import 'package:page_transition/page_transition.dart';
//import 'lib/screens/Landingpage/landingPage.dart';
//import 'testPage.dart';
//import 'lib/screens/Splascreen/testPage.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 1), //Duration
        () => Navigator.pushReplacement(context, PageTransition(child: Testpage(), type: PageTransitionType.leftToRight))); //Navigator
    super.initState();
  }
}
