import 'package:flutter/material.dart';

class Screen0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title:Text("Home Screen")
        
      ),
      backgroundColor: Colors.lightGreenAccent,
      body: Center(
        child:Column(
          children:<Widget>[
            SizedBox(
              height: 200.0,
            ),
            RaisedButton(onPressed: (){
              Navigator.pushNamed(context, '/first');
            },
            child: Text("Go to First Screen"),),
            SizedBox(
              height: 50.0,
            ),
             RaisedButton(onPressed: (){
              Navigator.pushNamed(context, '/second');
            },
            child: Text("Go to Second Screen"),)
          ]
        ),
      ),

        
    );
  }
}