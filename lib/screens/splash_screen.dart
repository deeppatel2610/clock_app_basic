import 'dart:async';

import 'package:clock_app_basic/utils/global.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    // TODO: implement initState
    Timer.periodic(Duration(seconds: 5), (timer) {
      Navigator.of(context).pushReplacementNamed('/digital');
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bgimg3),fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
