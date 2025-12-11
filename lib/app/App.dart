import 'package:flutter/material.dart';
import 'package:noq_app/exports/exports.dart';
class NoQ extends StatelessWidget {
  const NoQ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash1(),
      debugShowCheckedModeBanner: false,
    );
  }
}