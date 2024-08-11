import 'dart:async';

import 'package:flutter/material.dart';
import '../component/Button component/Row_udf.dart';
import '../component/digital clock/digital_Time.dart';
import '../component/digital clock/weekday_and_month.dart';
import '../utils/global.dart';

class DigitalClock extends StatefulWidget {
  const DigitalClock({super.key});

  @override
  State<DigitalClock> createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  @override
  void initState() {
    // TODO: implement initState
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          dateTime = DateTime.now();
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(gifUdf()),
          ),
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.black38),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 1,
              ),
              digitalTime(),
              weekdayAndMonthUdf(),
              const Spacer(
                flex: 3,
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 20),
            child: buttonUdf(context),
          ),
        ],
      ),
    );
  }
}
