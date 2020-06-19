import 'package:flutter/material.dart';
import 'screen0.dart';
import 'screen1.dart';
import 'screen2.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen0(),
      routes: {
        
        '/first':(context)=>Screen1(),
        '/second':(context)=>HomePage()
      },
    );
  }
}


void main()=>runApp(App());