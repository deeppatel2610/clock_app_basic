import 'package:clock_app_basic/screens/anloge_clock.dart';
import 'package:clock_app_basic/screens/buttons.dart';
import 'package:clock_app_basic/screens/digital_clock.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>const DigitalClock(),
        '/analog':(context)=>const AnalogClock(),
        '/button':(context)=>const Buttons()
      },
    );
  }
}
