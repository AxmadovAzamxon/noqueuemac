import 'package:flutter/material.dart';
import 'package:noq_app/exports/exports.dart';
class Mytextfield extends StatelessWidget {
  final hintText;
  Mytextfield({ required this.hintText, super.key});
  final emailcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        cursorColor: Colors.white,
        controller: emailcontroller,
        decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.deepPurpleAccent),
            )
        ),
      ),
    );
  }
}