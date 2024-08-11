import 'package:flutter/material.dart';

Row buttonUdf(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/digital');
          },
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 80,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
                color: Colors.black54,
                borderRadius: BorderRadius.circular(50)),
            child: const Text(
              'Digital',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/analog');
          },
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 80,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                color: Colors.black54,
                borderRadius: BorderRadius.circular(50)),
            child: const Text(
              'Analog',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/strap');
          },
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 80,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                color: Colors.black54,
                borderRadius: BorderRadius.circular(50)),
            child: const Text(
              'Strap',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/timer');
          },
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 80,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                color: Colors.black54,
                borderRadius: BorderRadius.circular(50)),
            child: const Text(
              'Timer',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
          ),
        ),
      ),
    ],
  );
}