import 'package:flutter/material.dart';

class Landingpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          bodyColor(),
          Provider.of<LandingHelpers>(context, listen: false).bodyImage(context),
          Provider.of<LandingHelpers>(context, listen: false).taglineText(context),
          Provider.of<LandingHelpers>(context, listen: false).mainButton(context),
          Provider.of<LandingHelpers>(context, listen: false).privacyText(context),
        ],
      ), //Stack
    ); //Scaffold
  }

  bodyColor() {
    return Container(
        decoration: BoxDecoration(
            gradient: LinedarGradietn(begin: Alignment.topCenter, end: Alignment.bottomCenter, stops: [
      0.5,
      0.9
    ], colors: [
      Colors.red,
      Color.blue
    ])));
  }
}
