import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Container(
        child: Image.asset("assets/splash.png"),
      ),
      backgroundColor: Colors.white,
    );
  }
}