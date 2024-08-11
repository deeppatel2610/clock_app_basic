import 'dart:async';

import 'package:clock_app_basic/utils/global.dart';
import 'package:flutter/material.dart';

import '../component/Button component/Row_udf.dart';
import '../component/Starp clock/strap_clock_stack.dart';

class StrapClock extends StatefulWidget {
  const StrapClock({super.key});

  @override
  State<StrapClock> createState() => _StrapClockState();
}

class _StrapClockState extends State<StrapClock> {
  void stackClock() {
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          if (check) {
            sec++;
            if (sec > 59) {
              min++;
              sec = 0;
              if (min > 59) {
                hour++;
                min = 0;
                sec = 0;
              }
            }
          }
        });
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    stackClock();

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
            image: AssetImage(bgimg),
            fit: BoxFit.cover,
          ),
        ),
        child: strapClockStack(),
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
