import 'package:flutter/material.dart';

import '../../utils/global.dart';

Padding button2() {
  return Padding(
    padding: const EdgeInsets.only(top: 240),
    child: GestureDetector(
      onTap: () {
        sec = 0;
        min = 0;
        hour = 0;
        check = false;
      },
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          color: Colors.black54,
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(
          Icons.refresh,
          color: Colors.grey,
          size: 40,
        ),
      ),
    ),
  );
}

Padding buttonPauseAndPlay() {
  return Padding(
    padding: const EdgeInsets.only(top: 110),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            check = true;
          },
          child: Container(
            alignment: Alignment.center,
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: Colors.black54,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(
              Icons.play_arrow,
              color: Colors.grey,
              size: 40,
            ),
          ),
        ),
        const SizedBox(
          width: 40,
        ),
        GestureDetector(
          onTap: () {
            check = false;
          },
          child: Container(
            alignment: Alignment.center,
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: Colors.black54,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(
              Icons.pause,
              color: Colors.grey,
              size: 40,
            ),
          ),
        ),
      ],
    ),
  );
}
