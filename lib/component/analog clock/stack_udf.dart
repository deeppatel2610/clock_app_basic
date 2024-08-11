import 'dart:math';

import 'package:flutter/material.dart';

import '../../utils/global.dart';
import '../digital clock/AM_and_PM.dart';
import '../digital clock/weekday_and_month.dart';

Stack analogClockUdf() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        height: 250,
        width: 250,
        decoration: const BoxDecoration(
            color: Colors.black38,
            shape: BoxShape.circle,
            // border: Border.all(color: Colors.black87,width: 1),
            boxShadow: [
              BoxShadow(color: Colors.black45, spreadRadius: 6, blurRadius: 6)
            ]),
      ),
      const CircleAvatar(
        radius: 2,
      ),
      Padding(
        padding: const EdgeInsets.only(right: 50),
        child: Text(
          '${(dateTime.hour > 12) ? (dateTime.hour % 12).toString().padLeft(2, '0') : (dateTime.hour).toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 70,
            height: -5.95,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 417, left: 180),
        child: Container(child: AM_And_PM_Udf()),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 315),
        child: Container(child: weekdayAndMonthUdf()),
      ),
      Transform.rotate(
        angle: (dateTime.second * 6) * pi / 180,
        child: const VerticalDivider(
          color: Color(0xff3F8DCC),
          indent: 315,
          endIndent: 545,
          thickness: 8,
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
        angle: ((dateTime.hour * 30) + dateTime.minute * 0.5) * pi / 180,
        child: const VerticalDivider(
          color: Colors.white,
          indent: 380,
          endIndent: 410,
          thickness: 5,
        ),
      ),
      const CircleAvatar(
        radius: 5,
        backgroundColor: Color(0xff181625),
      ),
      ...List.generate(
        60,
        (index) => Transform.rotate(
          angle: (index * 30) * pi / 180,
          child: const VerticalDivider(
            thickness: 2,
            indent: 309.5,
            endIndent: 545,
          ),
        ),
      ),
    ],
  );
}
