import 'dart:async';
import 'dart:math';

import 'package:clock_app_basic/utils/global.dart';
import 'package:flutter/material.dart';

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
          decoration: BoxDecoration(color: Colors.black54),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: const BoxDecoration(
                    color: Color(0xff181625),
                    shape: BoxShape.circle,
                    // border: Border.all(color: Colors.black87,width: 1),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white, spreadRadius: 5, blurRadius: 18)
                    ]),
              ),
              const CircleAvatar(
                radius: 2,
              ),
              Text(
                '${(dateTime.hour > 12) ? (dateTime.hour % 12).toString().padLeft(2, '0') : (dateTime.hour).toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 70,
                  height: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Transform.rotate(
                angle: (dateTime.second * 6) * pi / 180,
                child: const VerticalDivider(
                  color: Colors.red,
                  indent: 315,
                  endIndent: 545,
                  thickness: 10,
                ),
              ),
              Transform.rotate(
                angle: (dateTime.minute * 6) * pi / 180,
                child: const VerticalDivider(
                  color: Colors.white,
                  indent: 355,
                  endIndent: 410,
                  thickness: 2,
                ),
              ),
              Transform.rotate(
                angle: (dateTime.hour * 30) * pi / 180,
                child: const VerticalDivider(
                  color: Colors.white,
                  indent: 380,
                  endIndent: 410,
                  thickness: 5,
                ),
              ),
              const CircleAvatar(
                radius: 5,
                backgroundColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
