import 'dart:async';


import 'package:flutter/material.dart';

import 'productscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
@override
void initState() {
  Timer(const Duration(seconds: 6), () {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) =>Productscreen()));
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(1),
      body: Center(child: Image.asset('assets/Shoplogo.jpg')),
    );
  }
}
