import 'dart:async';
import 'dart:math';

import 'package:clock_app_basic/utils/global.dart';
import 'package:flutter/material.dart';

import '../component/Button component/Row_udf.dart';
import '../component/Timer clock/button_for_Timer.dart';

class TimerClock extends StatefulWidget {
  const TimerClock({super.key});

  @override
  State<TimerClock> createState() => _TimerClockState();
}

class _TimerClockState extends State<TimerClock> {
  void timerClock() {
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          if (secForTimer != 0 || minForTimer != 0 || hourForTimer != 0) {
            if (checkForTimer) {
              secForTimer--;
              if (secForTimer < 0) {
                minForTimer--;
                secForTimer = 59;
                if (minForTimer < 0) {
                  hourForTimer--;
                  minForTimer = 59;
                  secForTimer = 59;
                }
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

    timerClock();
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
            image: AssetImage(bgimg2),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 200),
              child: Container(
                alignment: Alignment.center,
                height: 350,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Text(
                    '${hourForTimer.toString().padLeft(2, '0')} : ${minForTimer.toString().padLeft(2, '0')} : ${secForTimer.toString().padLeft(2, '0')}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350),
              child: buttonForTimer(),
            ),


            ...List.generate(
              60,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 200),
                child: Transform.rotate(
                  angle: (index * 6) * pi / 180,
                  child: const VerticalDivider(
                    thickness: 2,
                    indent: 507,
                    endIndent: 157,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 200),
              child: SizedBox(
                height: 350,
                width: 350,
                child: CircularProgressIndicator(
                  value: secForTimer / 60,
                  color: Color(0xff3F8DCC),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle),
                    alignment: Alignment.center,
                    child: IconButton(
                        onPressed: () {
                          checkForTimer = true;
                        },
                        icon: const Icon(
                          Icons.play_arrow,
                          size: 35,
                          color: Colors.grey,
                        )),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle),
                    alignment: Alignment.center,
                    child: IconButton(
                        onPressed: () {
                          secForTimer = 0;
                          minForTimer = 0;
                          hourForTimer = 0;
                          checkForTimer = false;
                        },
                        icon: const Icon(
                          Icons.pause,
                          size: 35,
                          color: Colors.grey,
                        )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 20),
            child: buttonUdf(context),
          ),
        ],
      ),
    );
  }
}
