import 'dart:async';

import 'package:clock_app_basic/utils/global.dart';
import 'package:flutter/material.dart';
import '../component/Button component/Row_udf.dart';
import '../component/analog clock/stack_udf.dart';

class AnalogClock extends StatefulWidget {
  const AnalogClock({super.key});

  @override
  State<AnalogClock> createState() => _AnalogClockState();
}

class _AnalogClockState extends State<AnalogClock> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          dateTime = DateTime.now();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              gifUdf(),
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.black38),
          child: analogClockUdf(),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              bottom: 20,
            ),
            child: buttonUdf(context),
          ),
        ],
      ),
    );
  }
}
