import 'package:flutter/material.dart';
import 'package:noq_app/components/blocks/textfield.dart';
import 'package:noq_app/exports/exports.dart';
class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
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
             Mytextfield(hintText: "Elektron pochta kiriting"),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 330),
                child: Text("Parol",style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),),
              ),
              SizedBox(
                height: 10,
              ),
              Mytextfield(hintText: "Parolni kiriting"),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 160),
                child: Text(
                  "Parolni unutdingizmi?",
                  style: TextStyle(fontSize: 20,color: Colors.black38),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              AuthButton(text: "Kirish"),
              SizedBox(
                height: 30,
              ),
              Text("yoki",style: TextStyle(fontSize: 20,color: Colors.black38),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  google_icon,
                  SizedBox(width: 100,),
                  facebook_icon,
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Akkauntingiz yo’qmi?",style: TextStyle(color: Colors.grey,fontSize: 15),),
                  Text(" Bu yerdan ro’yhatdan o’ting",style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ),
              ]),
        ),
      ));
  }
}
