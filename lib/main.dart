// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home : SplashScreen(),
      
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:3), () {
      Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
    
  }
  

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[700],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image.image.png', height: 120,),
            SizedBox(height: 20,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text(""),
      ),
      body: Container(
        child: Center(
          child: Text("Home Page"),
        ),
      ),
      
    );
  }
}



