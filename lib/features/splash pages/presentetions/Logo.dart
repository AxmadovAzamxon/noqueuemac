import 'package:flutter/material.dart';
import 'package:noq_app/exports/exports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  init()async{
    await Future.delayed(Duration(seconds:  3));
    Navigator.push(context, MaterialPageRoute(builder: (_)=>Splash1()));
  }
  @override
  void initState() {
    init();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body : Center(
          child: Image.asset('assets/images/logo.png',
        )
    ));
  }
}

