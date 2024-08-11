import 'package:flutter/material.dart';

import '../../utils/global.dart';

Widget buttonForTimer() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: 80,
        child: ListWheelScrollView(
          onSelectedItemChanged: (value) {
            hourForTimer = value;
          },
          itemExtent: 50,
          diameterRatio: 0.6,
          perspective: 0.01,
          children: [
            ...List.generate(
              99,
              (index) => hourUdf(index: index),
            ),
          ],
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      SizedBox(
        width: 80,
        child: ListWheelScrollView(
          onSelectedItemChanged: (value) {
            minForTimer = value;
          },
          itemExtent: 50,
          diameterRatio: 0.6,
          perspective: 0.01,
          children: [
            ...List.generate(
              60,
              (index) => minUdf(index: index),
            ),
          ],
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      SizedBox(
        width: 80,
        child: ListWheelScrollView(
          onSelectedItemChanged: (value) {
            secForTimer = value;
          },
          itemExtent: 50,
          diameterRatio: 0.6,
          perspective: 0.01,
          children: [
            ...List.generate(
              60,
              (index) => secUdf(index: index),
            ),
          ],
        ),
      ),
    ],
  );
}

Container secUdf({required int index}) {
  return Container(
    height: 50,
    width: 50,
    alignment: Alignment.center,
    child: Text(
      '$index',
      style: TextStyle(
          color: Colors.white, fontSize: 35, fontWeight: FontWeight.w500),
    ),
  );
}

Container minUdf({required int index}) {
  return Container(
    height: 50,
    width: 50,
    alignment: Alignment.center,
    child: Text(
      '$index',
      style: TextStyle(
          color: Colors.white, fontSize: 35, fontWeight: FontWeight.w500),
    ),
  );
}

Container hourUdf({required int index}) {
  return Container(
    height: 50,
    width: 50,
    alignment: Alignment.center,
    child: Text(
      '$index',
      style: TextStyle(
          color: Colors.white, fontSize: 35, fontWeight: FontWeight.w500),
    ),
  );
}
