import 'package:flutter/material.dart';

import '../../utils/global.dart';

Row weekdayAndMonthUdf() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        '${days[dateTime.weekday - 1]} ${dateTime.day} ${month[dateTime.month - 1]}',
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 20,
          height: -0.5,
        ),
      )
    ],
  );
}