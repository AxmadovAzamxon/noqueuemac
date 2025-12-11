import 'package:flutter/material.dart';
import 'package:noq_app/exports/exports.dart';
class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
            child: Text("Kirish",style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),),
          ),
          SizedBox(
            height: 50,
          ),
          Image.asset('assets/images/logo.png',
            width: 120,
            height: 120,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 230),
            child: Text("Elektron pochta",style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),),
          ),
          SizedBox(
            height: 10,
          ),

    ]));
  }
}
