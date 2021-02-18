import 'package:flutter/material.dart';
import 'screens/Splashscreen/splashScreen.dart';
import 'widgets/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Multiprovider(child: 
            color: Colors.red,  
            ),App(title: 'Welcome to Flutter', home: kkk()), //MaterialApp
        providers: [
          ChangeNotifierProvider(create: (_) => Authentication()),
          ChangeNotifierProvider(create: (_) => LandingHelpers()),
        ]);
  }
}
