
import 'package:flutter/material.dart';
import 'package:noq_app/exports/exports.dart';

class Splash1 extends StatelessWidget {
  const Splash1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset('assets/images/splash1.png'),
          )),
          SizedBox(height: 20,),
           splash1_herotext1,
          SizedBox(height: 10,),
          splash1_herotext2,
          SizedBox(height: 10,),
          splash1_desctiption_text,
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              star_icon_on,
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: star_icon_off,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: star_icon_off,
              ),
            ],
          ),
          SizedBox(height: 60,),
          nextsplash2(context),
        ],
      )
    );
  }
}
