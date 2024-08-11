import 'package:flutter/material.dart';

import '../../utils/global.dart';
import 'button.dart';
import 'list_sec.dart';

Stack strapClockStack() {
  return Stack(
    alignment: Alignment.center,
    children: [

      Container(
        height: 350,
        width: 350,
        alignment: Alignment.center,
        child: Text(
          '${hour.toString().padLeft(2, '0')} : ${min.toString().padLeft(2, '0')} : ${sec.toString().padLeft(2, '0')}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 45,
            height: -2.5,
          ),
        ),
      ),

      ...listSec(),
      sizedBoxSec(),
      buttonPauseAndPlay(),
      button2(),

    ],
  );
}
