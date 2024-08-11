import 'package:clock_app_basic/screens/Strap_clock.dart';
import 'package:clock_app_basic/screens/anloge_clock.dart';
import 'package:clock_app_basic/screens/buttons.dart';
import 'package:clock_app_basic/screens/digital_clock.dart';
import 'package:clock_app_basic/screens/splash_screen.dart';
import 'package:clock_app_basic/screens/timer_clock.dart';
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
      routes: {
        '/':(context)=>const SplashScreen(),
        '/digital': (context) => const DigitalClock(),
        '/analog': (context) => const AnalogClock(),
        '/button': (context) => const Buttons(),
        '/strap': (context) => const StrapClock(),
        '/timer': (context) => const TimerClock()
      },
    );
  }
}
