import 'package:flutter/material.dart';
import 'package:noq_app/exports/exports.dart';

class Splash2 extends StatelessWidget {
  const Splash2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            Center(child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset('assets/images/splash2.png'),
            )),
            SizedBox(height: 20,),
            splash2_herotext1,
            SizedBox(height: 15,),
            splash2_herotext2,
            SizedBox(height: 20,),
            splash2_desctiption_text1,
            SizedBox(height: 5,),
            splash2_description_text2,
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                star_icon_off,
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: star_icon_on,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: star_icon_off,
                  ),
              ],
            ),
            SizedBox(height: 60,),
            nextsplash3(context),
            ])
        );
  }
}
