import 'package:flutter/material.dart';

import '../../utils/global.dart';

Padding AM_And_PM_Udf() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          dateTime.second.toString().padLeft(2, '0'),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          (dateTime.hour <= 12) ? ('AM') : ('PM'),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}