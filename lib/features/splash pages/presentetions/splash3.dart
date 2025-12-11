import 'package:flutter/material.dart';
import 'package:noq_app/exports/exports.dart';

class Splash3 extends StatelessWidget {
  const Splash3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            Center(child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset('assets/images/splash3.png'),
            )),
            SizedBox(height: 20,),
            splash3_herotext1,
            SizedBox(height: 15,),
            splash3_herotext2,
            SizedBox(height: 20,),
            Opacity(
              opacity: 0.5,
              child: splash3_desctiption_text,
            ),

            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                star_icon_off,
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: star_icon_off,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: star_icon_on,
                ),
              ],
            ),
            SizedBox(height: 60,),
            nextLogIn(context),
          ],
        ));

  }
}
