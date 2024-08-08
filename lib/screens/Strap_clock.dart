import 'dart:async';
import 'dart:math';

import 'package:clock_app_basic/utils/global.dart';
import 'package:flutter/material.dart';

import '../component/Button component/Row_udf.dart';

class StrapClock extends StatefulWidget {
  const StrapClock({super.key});

  @override
  State<StrapClock> createState() => _StrapClockState();
}

class _StrapClockState extends State<StrapClock> {

  void stackClock()
  {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if(check)
          {
            sec++;
            if(sec>59)
            {
              min++;
              sec=0;
              if(min>59)
              {
                hour++;
                min=0;
                sec=0;
              }
            }
          }
      });
    },);
  }

  @override
  void initState() {
    // TODO: implement initState
      stackClock();

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
            image: AssetImage(bgimg),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [

            Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  shape: BoxShape.circle),
              alignment: Alignment.center,
              child: Text(
                '${hour.toString().padLeft(2,'0')} : ${min.toString().padLeft(2,'0')} : ${sec.toString().padLeft(2,'0')}',
                style: const TextStyle(color: Colors.white, fontSize: 45, height: -2),
              ),
            ),
            SizedBox(
              height: 350,
              width: 350,
              child: CircularProgressIndicator(
                value: sec/60,
                color: Colors.red,
              ),
            ),
            ...List.generate(
              60,
              (index) => Transform.rotate(
                angle: (index * 30) * pi / 180,
                child: const VerticalDivider(
                  thickness: 2,
                  indent: 259,
                  endIndent: 595,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 110),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap:() {
                      check=true;
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
                      child: Icon(Icons.play_arrow,color: Colors.grey,size: 40,),
                    ),
                  ),
                  SizedBox(width: 40,),
                  GestureDetector(
                    onTap:() {
                      check=false;
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
                      child: Icon(Icons.pause,color: Colors.grey,size: 40,),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 240),
              child: GestureDetector(
                onTap:() {
                  sec=0;
                  min=0;
                  hour=0;
                  check=false;
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
                  child: Icon(Icons.refresh,color: Colors.grey,size: 40,),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 35),
            child: buttonUdf(context),
          ),
        ],
      ),
    );
  }
}
