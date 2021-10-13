import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen/HomeScreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), ()=>Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder:(context)=>HomeScreen()),
            (route) => false));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Text("This is a Splash Screen" ,
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white,
          fontSize: 40),
          )
        ],
      )
    );
  }
}
