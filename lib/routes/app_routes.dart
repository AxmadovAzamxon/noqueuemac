import 'package:flutter/material.dart';
import 'package:noq_app/exports/exports.dart';
import 'package:noq_app/features/Auth/login.dart';
import 'package:noq_app/features/splash%20pages/presentetions/splash3.dart';

Widget nextsplash2(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => Splash2()),
      );
    },
    child: nextblock
  );
}
Widget nextsplash3(BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => Splash3()),
        );
      },
      child: nextblock
  );
}
Widget nextLogIn(BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => LogIn()),
        );
      },
      child: nextblock
  );
}
