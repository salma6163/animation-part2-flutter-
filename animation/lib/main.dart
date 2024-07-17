//import 'package:animation/animatedContainer.dart';
//import 'package:animation/animatedalign.dart';
//import 'package:animation/animated%20switcher.dart';
//import 'package:animation/slider.dart';
//import 'package:animation/animatedpadding.dart';
import 'package:animation/fadetransition.dart';

//import 'package:animation/hero.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: fade(),
    );
  }
}
