import 'dart:math';

import 'package:flutter/material.dart';

import '../../utils/global.dart';

SizedBox sizedBoxSec() {
  return SizedBox(
    height: 350,
    width: 350,
    child: CircularProgressIndicator(
      value: sec / 60,
      color: const Color(0xff3F8DCC),
    ),
  );
}

List<Widget> listSec() {
  return List.generate(
    60,
    (index) => Transform.rotate(
      angle: (index * 6) * pi / 180,
      child: const VerticalDivider(
        thickness: 2,
        indent: 257,
        endIndent: 607,
      ),
    ),
  );
}
