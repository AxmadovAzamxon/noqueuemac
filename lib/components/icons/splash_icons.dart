import 'package:flutter/material.dart';
import 'package:noq_app/exports/exports.dart';

final star_icon_on=Image.asset('assets/images/iconstar1.png',
  width: 30,
  height: 30,
  fit: BoxFit.cover,
);
final star_icon_off=Opacity(
  opacity: 0.5,
  child: Image.asset('assets/images/iconstar1.png',
    width: 30,
    height: 30,
    fit: BoxFit.cover,
  ),
);